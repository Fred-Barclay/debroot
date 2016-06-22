package DebrootForm;

use strict;
use warnings;
use QtCore4;
use QtGui4;
use QtCore4::isa qw( Qt::Widget );

# [0]
use Ui_DebrootForm;
# [0]

# [1]
use QtCore4::slots
	on_radioButtonDebian_toggled => [],
	on_radioButtonUbuntu_toggled => [],
	on_lineEditROOTFSDirectory_textChanged => [],
	on_pushButtonSelectISO_clicked => [],
	disableUnsquashButton => [],
	on_pushButtonUnsquash_clicked => [],
	on_pushButtonDebootstrap_clicked => [],
	on_pushButtonRead_clicked => [],
	on_pushButtonWrite_clicked => [],
	on_pushButtonSourcesHelp_clicked => [],
	on_pushButtonUpdate_clicked => [],
	on_pushButtonUpgrade_clicked => [],
	on_pushButtonDistUpgrade_clicked => [],
	on_pushButtonInstallHelp_clicked => [],
	disableInstallButton => [],
	on_pushButtonInstall_clicked => [],
	on_pushButtonChrootShell_clicked => [],
	on_pushButtonRebuildLiveISO_clicked => [],
	on_pushButtonBuildLiveISO_clicked => [],
	on_pushButtonBackupROOTFS_clicked=> [];
# [1]

# [0]
sub NEW {
    my ( $class, $parent ) = @_;
    $class->SUPER::NEW($parent);
    this->{ui} = Ui_DebrootForm->setupUi(this);
	print "loading...\n";
	# select debian by default
	this->{ui}->{radioButtonDebian}->setAutoExclusive('true');
	this->{ui}->{radioButtonDebian}->setChecked('true');
	# add possible debootstrap architectures
	my $sysarch = `dpkg --print-architecture`;
	if ( "$sysarch" eq "amd64\n" ) {
		#this->{ui}->{comboBoxArch}->insertItem(0,'amd64');
		this->{ui}->{comboBoxArch}->addItem('amd64');
	}
	this->{ui}->{comboBoxArch}->addItem('i386');
	# disable debootstrap button while a directory is not set
	this->{ui}->{pushButtonDebootstrap}->setEnabled(0);
	# disable install button in packages list is empty
	this->connect(this->{ui}->{plainTextEditInstall}, SIGNAL 'textChanged()', this, SLOT 'disableInstallButton()');
	this->{ui}->{plainTextEditInstall}->setPlainText('');
	# disable unsquash button while no rootfs was set and no iso was selected
	this->connect(this->{ui}->{lineEditISOPath}, SIGNAL 'textChanged()', this, SLOT 'disableUnsquashButton()');
	this->{ui}->{lineEditISOPath}->insert('');
	this->{ui}->{lineEditROOTFSDirectory}->insert('');
	# disable windows resizing
	setFixedSize(size());
}
# [0]

# [1]
sub on_radioButtonDebian_toggled {
	my ( $value ) = @_;
	print "Debian was selected\n";
	if(this->{ui}->{radioButtonDebian}->isChecked()) {
		this->{ui}->{comboBoxRelease}->clear();
		my @releases = ('wheezy', 'jessie', 'stretch', 'sid');
		my $release = undef;
		foreach $release (@releases) {
			this->{ui}->{comboBoxRelease}->addItem( $release );
		}
	}
}
# [1]

# [1]
sub on_radioButtonUbuntu_toggled {
	my ( $value ) = @_;
	print "Ubuntu was selected\n";
	if(this->{ui}->{radioButtonUbuntu}->isChecked()) {
		this->{ui}->{comboBoxRelease}->clear();
		my @releases = ('trusty', 'xenial');
		my $release = undef;
		foreach $release (@releases) {
			this->{ui}->{comboBoxRelease}->addItem( $release );
		}
	}
}
# [1]

# [1]
sub on_lineEditROOTFSDirectory_textChanged {
	my ( $value ) = @_;
	# dont enable debootstrap button if 1) no text was entered; 2) if directory already exists; or 3) a file exists.
	if ( (!this->{ui}->{lineEditROOTFSDirectory}->displayText() eq "" ) && ( ! -d this->{ui}->{lineEditROOTFSDirectory}->displayText() ) && ( ! -e this->{ui}->{lineEditROOTFSDirectory}->displayText() ) ) {
		# enable debootstrap button
		this->{ui}->{pushButtonDebootstrap}->setEnabled('true');
	} else {
		# disable debootstrap button
		this->{ui}->{pushButtonDebootstrap}->setEnabled(0);
	}
	# dont enable unsquash button if 1) no text was entered; 2) if no iso file was selected.
	if ( ( !this->{ui}->{lineEditROOTFSDirectory}->displayText() eq "" ) && ( !this->{ui}->{lineEditISOPath}->displayText() eq "" ) ) {
		# enable debootstrap button
		this->{ui}->{pushButtonUnsquash}->setEnabled('true');
	} else {
		# disable debootstrap button
		this->{ui}->{pushButtonUnsquash}->setEnabled(0);
	}
}
# [1]

# [1]
sub on_pushButtonSelectISO_clicked {
	my ( $value ) = @_;
	my $file = Qt::FileDialog::getOpenFileName( this, "Select ISO files", "/media/", "iso files (*.iso)" );
	this->{ui}->{lineEditISOPath}->setText( $file );
	# enable rebuild live iso button
	this->{ui}->{pushButtonRebuildLiveISO}->setEnabled(1);
	# disabble build live iso button
	#this->{ui}->{pushButtonBuildLiveISO}->setEnabled(0);

}
# [1]

# [1]
sub disableUnsquashButton {
	my ( $value ) = @_;
	this->{ui}->{pushButtonUnsquash}->setEnabled(!( this->{ui}->{lineEditISOPath}->toPlainText() eq "" ));
}
# [1]

# [1]
sub on_pushButtonUnsquash_clicked {
	my ( $value ) = @_;

	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();

	this->run_system( "mkdir -p $dir-iso $dir-binary" );

	my $iso = this->{ui}->{lineEditISOPath}->displayText();

	this->run_system( "mount -o loop $iso $dir-iso" );

	my $livesystem = this->get_livesystem( "$dir-iso" );

	this->run_system( "rsync --exclude=/$livesystem/filesystem.squashfs -a $dir-iso/ $dir-binary" );

	this->run_system_terminal( "unsquashfs -dest $dir/ $dir-iso/$livesystem/filesystem.squashfs" );

	this->run_system( "umount $dir-iso" );
	this->run_system( "rmdir $dir-iso" );
}
# [1]

# [1]
sub on_pushButtonDebootstrap_clicked {
	my ( $value ) = @_;
	# disable debootstrap button
	this->{ui}->{pushButtonDebootstrap}->setText('Please wait...');
	this->{ui}->{pushButtonDebootstrap}->setEnabled(0);
	my $architecture = this->{ui}->{comboBoxArch}->currentText();
	$architecture = '--arch=' . $architecture;
	my $variant = "";
	if ( this->{ui}->{checkBoxVariantMinBase}->isChecked() ) {
		$variant = this->{ui}->{checkBoxVariantMinBase}->text();
	}
	my $additionalopts = this->{ui}->{lineEditDebootstrapAdditionalOptions}->displayText();
	my $release = this->get_selected_release();
	my $target = this->{ui}->{lineEditROOTFSDirectory}->displayText();
	my $mirror = this->{ui}->{lineEditDebootstrapMirror}->displayText();
	# install ubuntu-archive-keyring or debian-archive-keyring before
	# debootraping a possible foreign release.
	my $distro = this->get_selected_distro();
	# install distro archive keyring
	this->install_temp_pkg_system( "debootstrap $distro-archive-keyring" );
	# start debootstrap with all options
	#Qt::MessageBox::about(this, this->tr('Please wait'),
    #               this->tr('Please wait a moment... After the procedure is done you will return to debroot.'));
	this->run_system_terminal( "debootstrap $architecture $variant $additionalopts $release $target $mirror" );
	# unset rootfs hostname
	this->run_system( "echo $distro | tee $target/etc/hostname" );
	# remove installed packages
	this->remove_temp_pkg_system();
	# make lineEdit change to check if directory exists
	this->{ui}->{lineEditROOTFSDirectory}->setText( $target );
	# enable debootstrap button
	this->{ui}->{pushButtonDebootstrap}->setText( 'debootstrap' );
	this->{ui}->{pushButtonDebootstrap}->setEnabled( 1 );
}
# [1]

# [1]
sub on_pushButtonRead_clicked {
	my ( $value ) = @_;
	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();
	my $sourcesfile = "$dir"."/etc/apt/sources.list";
	my $sourcescontent;
	# read actual sources.list and put it in plainTextEditSourcesList
	open( my $fh, "<", "$sourcesfile" )
		|| die "Can't open < $sourcesfile: $!";
	{
		local $/;
		$sourcescontent = <$fh>;
	}
	close( $fh )
		|| warn "close $sourcesfile failed: $!";
	this->{ui}->{plainTextEditSourcesList}->setPlainText( "$sourcescontent" );
}
# [1]

# [1]
sub on_pushButtonWrite_clicked {
	my ( $value ) = @_;
	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();
	my $sourcesfile = "$dir"."/etc/apt/sources.list";
	my $sourcescontent = this->{ui}->{plainTextEditSourcesList}->toPlainText();
	# write actual content of plainTextEditSourcesList to sources.list
	open( my $fh, ">", "$sourcesfile" )
		|| die "Can't open > $sourcesfile: $!";
	{
		local $/;
		print $fh $sourcescontent;
	}
	close( $fh )
		|| warn "close $sourcesfile failed: $!";
}
# [1]

# [1]
sub on_pushButtonUpdate_clicked {
	my ( $value ) = @_;
	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();

	this->run_chroot_terminal( $dir, "apt-get update" );
}
# [1]

# [1]
sub on_pushButtonUpgrade_clicked {
	my ( $value ) = @_;
	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();

	this->run_chroot_terminal( $dir, "export DEBIAN_FRONTEND=noninteractive; apt-get upgrade" );
}
# [1]

# [1]
sub on_pushButtonDistUpgrade_clicked {
	my ( $value ) = @_;
	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();

	this->run_chroot_terminal( $dir, "export DEBIAN_FRONTEND=noninteractive; apt-get dist-upgrade --no-install-recommends" );
}
# [1]

# [1]
sub on_pushButtonSourcesHelp_clicked {
	my ( $value ) = @_;
	my $release = get_selected_release();
	my $sourcescontent;
	my $distro = get_selected_distro();
	my $text1;
	my $text2;

	$text1 = "sources.list for $distro $release:";
	if ( "$distro" eq "debian" ) {
		$text2 = "# sources.list for $distro $release\n
deb http://ftp.debian.org/debian/ $release main contrib non-free\n
deb-src http://ftp.debian.org/debian/ $release  main contrib non-free\n
\n
deb http://security.debian.org/ $release/updates main contrib non-free\n
deb-src http://security.debian.org/ $release/updates main contrib non-free\n
\n
# $release-updates, previously known as 'volatile'\n
deb http://ftp.debian.org/debian/ $release-updates main contrib non-free\n
deb-src http://ftp.debian.org/debian/ $release-updates main contrib non-free\n
\n";
	} else {
		$text2 = "# sources.list for $distro $release\n
###### Ubuntu Main Repos\n
deb http://archive.ubuntu.com/ubuntu/ $release main restricted universe multiverse\n
deb-src http://archive.ubuntu.com/ubuntu/ $release main restricted universe multiverse\n
\n
###### Ubuntu Update Repos\n
deb http://archive.ubuntu.com/ubuntu/ $release-security main restricted universe multiverse\n
deb http://archive.ubuntu.com/ubuntu/ $release-updates main restricted universe multiverse\n
deb http://archive.ubuntu.com/ubuntu/ $release-backports main restricted universe multiverse\n
deb-src http://archive.ubuntu.com/ubuntu/ $release-security main restricted universe multiverse\n
deb-src http://archive.ubuntu.com/ubuntu/ $release-updates main restricted universe multiverse\n
deb-src http://archive.ubuntu.com/ubuntu/ $release-backports main restricted universe multiverse\n
\n";
	}
	Qt::MessageBox::about(this,
		this->tr( "$text1" ),
		this->tr( "$text2" ));
}
# [1]

# [1]
sub on_pushButtonInstallHelp_clicked {
	my ( $value ) = @_;
	### TODO/FIXME
}
# [1]

# [1]
sub disableInstallButton {
	my ( $value ) = @_;
	this->{ui}->{pushButtonInstall}->setEnabled(!( this->{ui}->{plainTextEditInstall}->toPlainText() eq "" ));
}
# [1]

# [1]
sub on_pushButtonInstall_clicked {
	my ( $value ) = @_;
	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();
	my $allowunauthenticated = "";
	if ( this->{ui}->{checkBoxUnauthenticated}->isChecked() ) {
		$allowunauthenticated = this->{ui}->{checkBoxUnauthenticated}->text();
	}
	my $noinstallrecommends = "";
	if ( this->{ui}->{checkBoxRecommends}->isChecked() ) {
		$noinstallrecommends = this->{ui}->{checkBoxRecommends}->text();
	}
	my $forceyes = "";
	if ( this->{ui}->{checkBoxForceYes}->isChecked() ) {
		$forceyes = this->{ui}->{checkBoxForceYes}->text();
	}

	my $packages = this->{ui}->{plainTextEditInstall}->toPlainText();

	this->run_chroot_terminal( $dir, "export DEBIAN_FRONTEND=noninteractive; apt-get install $allowunauthenticated $noinstallrecommends $forceyes $packages" );
}
# [1]

# [1]
sub on_pushButtonChrootShell_clicked {
	my ( $value ) = @_;
	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();

	this->run_chroot_terminal( $dir, "export HOME=/root; export LC_ALL=C; exec bash" );
}
# [1]

# [1]
sub on_pushButtonRebuildLiveISO_clicked {
	my ( $value ) = @_;

	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();

	my $binarydir = undef;
	my $command = undef;

	$binarydir = "$dir-binary";

	print "binary dir: $binarydir\n";

	my $livedir = this->get_livesystem( $binarydir );

	print "livedir: $livedir\n";

	if ( "$livedir" eq "casper" ) {
		# regenerate manifest
		$command = "chroot $dir dpkg-query -W --showformat='\${Package} \${Version}\n' > $dir/tmp/filesystem.manifest";
		system ( $command );	# cant use run_chroot() because of quotes?
		# append to build script manally
		system( "echo $command >> $dir-builds-script.sh" );

		#this->run_chroot ( $dir, "dpkg-query -W --showformat='\${Package} \${Version}\n' > $dir/tmp/filesystem.manifest" );
		this->run_system( "mv $dir/tmp/filesystem.manifest $dir-binary/$livedir/" );
		this->run_system( "cp $dir-binary/$livedir/filesystem.manifest $dir-binary/$livedir/filesystem.manifest-desktop" );
		this->run_system( "sed -i '/ubiquity/d' $dir-binary/$livedir/filesystem.manifest-desktop" );
		this->run_system( "sed -i '/casper/d' $dir-binary/$livedir/filesystem.manifest-desktop" );
		# rebuild gfxboot
		this->rebuild_gfxboot( "$dir-binary/isolinux/" );

	}

	this->install_temp_pkg_system( "squashfs-tools xorriso" );

	unlink "$dir-binary/$livedir/filesystem.squashfs";
	this->run_system_terminal( "mksquashfs $dir $dir-binary/$livedir/filesystem.squashfs" );

	unlink "$dir-binary/md5sum.txt";

	this->run_system_terminal( "cd $dir-binary && find -type f ! -path './isolinux/isolinux.bin' ! -path './isolinux/boot.cat' ! -path './isolinux/isohdpfx.bin' ! -path './boot/boot.bin' ! -path './boot/grub/stage2_eltorito' ! -path './*SUMS' ! -path './*sum.txt' -print0 | xargs -0 md5sum | sort -z | tee md5sum.txt" );

	my $uefi = "0";
	if ( -e "$dir-binary/boot/grub/efi.img" ) {
		print "found uefi dir.\n";
		$uefi = "1";
	}

	### TODO/FIXME
	#if ( "$uefi" eq "1" ) {
	#	$command = "xorriso -as mkisofs -isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin -c isolinux/boot.cat -b isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e boot/grub/efi.img -no-emul-boot -isohybrid-gpt-basdat -o $dir.iso $dir-binary || read -p 'Error. Press any key.'";
	#} else {
	#	$command = "xorriso -as mkisofs -D -r -V \"debroot\" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o $dir.iso $dir-binary || read -p 'Error. Press any key.'";
	#}
	unlink "$dir.iso";
	this->run_system_terminal( "cd $dir-binary && xorriso -as mkisofs -isohybrid-mbr isolinux/isohdpfx.bin -D -r -V \"debroot\" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o $dir.iso ." );

	this->remove_temp_pkg_system();
	this->remove_temp_pkg_chroot( $dir );

}
# [1]

# [1]
sub on_pushButtonBuildLiveISO_clicked {
	my ( $value ) = @_;

	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();

	### TODO/FIXME

	my $command = undef;
	my $distro = this->get_selected_distro();
	my $release = this->get_selected_release();

	my $livesystem = undef;
	if ( "$distro" eq "ubuntu" ) {
		$livesystem = "casper";
	} else {
		# debian-live
		$livesystem = "live";
	}

	## create $dir-binary
	this->run_system( "mkdir -p $dir-binary/$livesystem $dir-binary/isolinux" );

	## check in rootfs what is the distro for casper or live-boot

	## create dir in $dir-binary for live or casper
	## install  in chroot (create temp list of installed packages)
	## install syslinux in ubuntu precise/trusty and isolinux+syslinux-utils+syslinux-efi+syslinux-common on xenial
	### on ubuntu
	my $syslinux_packages = undef;
	if ( ( "$release" eq "precise" ) || ( "$release" eq "trusty" ) || ( "$release" eq "wheezy" ) ) {
		$syslinux_packages = "syslinux";
	} else {
		$syslinux_packages = "isolinux syslinux syslinux-utils syslinux-efi syslinux-common";
	}
	#### install syslinux-theme-ubuntu and gfxboot-theme-ubuntu to have boot options
	my $syslinux_theme = undef;
	if ( !( "$release" eq "jessie" ) ) {
		$syslinux_theme = "syslinux-themes-$distro";
	} else {
		this->fix_syslinux_theme_jessie( $dir );
		$syslinux_theme = "";
	}
	if ( "$distro" eq "ubuntu" ) {
		$syslinux_theme = $syslinux_theme . " gfxboot-theme-ubuntu";
	}
	#### FIXME: what about installing to $dir-binary, as bellow in debian?
	### on debian install syslinux-theme-ubuntu (except for jessie, do it manually -t jessie)
	this->install_temp_pkg_chroot( $dir, "$syslinux_packages $syslinux_theme" );
	#### donwload syslinux-themes-debian-wheezy and install it manually in $dir-binary:
	#	cp chroot/usr/share/syslinux/themes/debian-wheezy/isolinux-live/splash.png binary/isolinux/
	#	cp chroot/boot/memtest86+.bin binary/live/memtest
	#	cp -n chroot/usr/lib/syslinux/modules/bios/* binary/isolinux/
	if ( "$distro" eq "debian" ) {
		this->run_system( "cp -aL $dir/usr/share/syslinux/themes/debian-wheezy/isolinux-live/* $dir-binary/isolinux/ > /dev/null 2>&1" );
		if ( "$release" eq "wheezy" ) {
			this->run_system( "cp $dir/usr/lib/syslinux/* $dir-binary/isolinux/ > /dev/null 2>&1" );
			this->run_system( "cp $dir/usr/lib/isolinux/* $dir-binary/isolinux/ > /dev/null 2>&1" );
		} else {
			this->run_system( "cp $dir/usr/lib/SYSLINUX/* $dir-binary/isolinux/ > /dev/null 2>&1" );
			this->run_system( "cp $dir/usr/lib/ISOLINUX/* $dir-binary/isolinux/ > /dev/null 2>&1" );
			this->run_system( "cp $dir/usr/lib/syslinux/modules/bios/* $dir-binary/isolinux/" );
		}
		# remove @LB_BOOTAPPEND_LIVE@ from live.cfg
		my $command = "sed -i 's|\@LB_BOOTAPPEND_LIVE@|splash quiet|' $dir-binary/isolinux/live.cfg";
		system( "$command" );
		# append to build script manally
		system( "echo '$command' >> $dir-builds-script.sh" );

		this->run_system( "cp $dir/boot/memtest86+.bin $dir-binary/$livesystem/memtest" );
	} else {
		this->run_system( "tar -xzf $dir/usr/share/gfxboot-theme-ubuntu/bootlogo.tar.gz -C $dir-binary/isolinux/" );
		this->run_system( "cp -aL $dir/usr/share/syslinux/themes/$distro-$release/isolinux-live/* $dir-binary/isolinux/" );
		if ( !( "$release" eq "xenial" ) ) {
			this->run_system( "cp $dir/usr/lib/syslinux/* $dir-binary/isolinux/ > /dev/null 2>&1" );
			this->run_system( "cp $dir/usr/lib/isolinux/* $dir-binary/isolinux/ > /dev/null 2>&1" );
		} else {
			this->run_system( "cp $dir/usr/lib/SYSLINUX/* $dir-binary/isolinux/ > /dev/null 2>&1" );
			this->run_system( "cp $dir/usr/lib/ISOLINUX/* $dir-binary/isolinux/ > /dev/null 2>&1" );
			this->run_system( "cp $dir/usr/lib/syslinux/modules/bios/* $dir-binary/isolinux/" );
		}
		this->run_system( "mkdir -p $dir-binary/install; cp $dir/boot/memtest86+.bin $dir-binary/install/mt86plus" );
	}

	this->install_temp_pkg_chroot( $dir, "dbus" );
	## run 'dbus-uuidgen > /var/lib/dbus/machine-id' in chroot and stop dbus with '/etc/init.d/dbus stop' so it doesnt leave /run/dbus/system_bus_socket behind.
	## install casper or live-boot in chroot
	### and also install a kernel in none is present (from debootstrap)
	my $live_packages = "";
	my $linux_packages = "";
	my $additional_packages = "";
	# Always install dhcp packages if none is installed.
	# Needed to get dhcp networking from a bare minbase variant chroot.
	if ( ! -d "$dir/usr/share/doc/isc-dhcp-client" ) {
		$additional_packages = $additional_packages . " ifupdown ifplugd isc-dhcp-client";
	}
	if ( "$distro" eq "ubuntu" ) {
		$live_packages = "casper lupin-casper";
		if ( !( -e "$dir/boot/vmlinuz-*" ) ) {
			$linux_packages = "linux-image-generic";
		}
		$additional_packages = $additional_packages . " plymouth-theme-ubuntu-text";
	} else {
		$live_packages = "live-boot live-config live-tools sudo user-setup";
		if ( !( -e "$dir/boot/vmlinuz-*" ) ) {
			my $arch = `chroot $dir dpkg --print-architecture`;
			if ( "$arch" eq "amd64\n" ) {
				$linux_packages = "linux-image-amd64";
			} else {
				$linux_packages = "linux-image-686";
			}
			if ( ( ! -d "$dir/usr/share/doc/sysvinit-core" ) && ( ! -d "$dir/usr/share/doc/sysvinit" ) ) {
				if ( "$release" eq "wheezy" ) {
					$additional_packages = $additional_packages . " sysvinit";
				} else {
					$additional_packages = $additional_packages . " systemd-sysv";
				}
				if ( "$release" eq "jessie" ) {
					$live_packages = $live_packages . " live-config-systemd";
				}
			}
			if ( ( ! -d "$dir/usr/share/doc/plymouth-themes" ) && ( ! -d "$dir/usr/share/doc/plymouth-themes-all" ) ) {
				if ( "$release" eq "wheezy" ) {
					$additional_packages = $additional_packages . " plymouth-themes-all";
				} else {
					$additional_packages = $additional_packages . " plymouth-themes";
				}
			}
		}
	}
	# install packages in chroot
	this->install_temp_pkg_chroot( $dir, "$live_packages $linux_packages $additional_packages" );
	## run apt-get clean in chroot
	this->run_chroot( $dir, "apt-get clean" );

	if ( "$distro" eq "debian" ) {
		this->run_system( "cp $dir/boot/vmlinuz-* $dir-binary/$livesystem/vmlinuz" );
		this->run_system( "cp $dir/boot/initrd.img-* $dir-binary/$livesystem/initrd.img" );
	} else {
		this->run_system( "cp $dir/boot/vmlinuz-* $dir-binary/$livesystem/vmlinuz" );
		this->run_system( "cp $dir/boot/initrd.img-* $dir-binary/$livesystem/initrd" );
		this->install_temp_pkg_system( "lzma" );
		`ls $dir-binary/$livesystem/`;
		this->run_system_terminal( "zcat $dir-binary/$livesystem/initrd | lzma -c > $dir-binary/$livesystem/initrd.lz" );
		this->run_system( "rm $dir-binary/$livesystem/initrd" );
	}

	this->remove_temp_pkg_system();

	# In ubuntu resolvconf keeps debootstrap resolv.conf. Unset it.
	# See <https://bugs.launchpad.net/ubuntu/+source/resolvconf/+bug/1279760>
	#if ( ( -e "$dir/etc/resolvconf/resolv.conf.d/head" ) && ( -e "$dir/etc/resolvconf/resolv.conf.d/original" ) ) {
	#	unlink "$dir/etc/resolvconf/resolv.conf.d/head";
	#	unlink "$dir/etc/resolvconf/resolv.conf.d/original";
	#	$command = "touch $dir/etc/resolvconf/resolv.conf.d/head; touch $dir/etc/resolvconf/resolv.conf.d/original";
	#	system ( $command );
	#}

	#this->on_pushButtonRebuildISO_clicked();
	#QMetaObject::invokeMethod( this->{ui}->{pushButtonRebuildISO}, "clicked" );
}
# [1]

# [1]
sub on_pushButtonBackupROOTFS_clicked {
	my ( $value ) = @_;

	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();

	this->run_system_terminal( "tar -czvf $dir.tar.gz $dir" );
}
# [1]

# [1]
sub install_temp_pkg_system {
	my ( @packages ) = @_;

	@packages = split( ' ', "@packages" );

	my $packages = "@packages";
	my $command = undef;

	# only install non-installed packages
	my $package = undef;
	my $result = undef;
	foreach (@packages) {
		$package = $_;
		this->run_system( "dpkg -s $package > /dev/null 2>&1" );
		$result = $?;
		print "result: $result\n";
		if ( $result == 0 ) {
			print "package $package was already installed.\n";
			# remove $package from $packages
			$packages =~ s/$package//;
		}
	}

	if ( $packages =~ /^ *$/ ) {
		print "all is already installed.\n";
		return 0;
	}

	this->run_system_terminal( "export DEBIAN_FRONTEND=noninteractive; apt-get install $packages --no-install-recommends" );

	this->run_system( "echo $packages >> /tmp/temp_pkg_system" );
}
# [1]

# [1]
sub install_temp_pkg_chroot {
	my $dir = shift;
	my ( @packages ) = @_;

	@packages = split( ' ', "@packages" );

	my $packages = "@packages";
	my $command = undef;

	# only install non-installed packages
	my $package = undef;
	my $result = undef;
	foreach (@packages) {
		$package = $_;
		this->run_chroot( $dir, "dpkg -s $package > /dev/null 2>&1" );
		$result = $?;
		print "result: $result\n";
		if ( $result == 0 ) {
			print "package $package was already installed.\n";
			# remove $package from $packages
			$packages =~ s/$package//;
		}
	}

	if ( $packages =~ /^ *$/ ) {
		print "all is already installed.\n";
		return 0;
	}

	this->run_chroot_terminal( $dir, "export DEBIAN_FRONTEND=noninteractive; apt-get install $packages --no-install-recommends" );

	this->run_system( "echo $packages >> /tmp/temp_pkg_chroot" );
}
# [1]

# [1]
sub remove_temp_pkg_system {
	my ( $value ) = @_;

	if ( !( -e "/tmp/temp_pkg_system" ) ) {
		return 0;
	}

	my $packages = `cat /tmp/temp_pkg_system`;
	# remove all \n and replace with space
	$packages =~ s/\n/ /g;

	my $command = undef;

	print "removing temporary packages from system.\n";
	if ( defined $packages) {
		print "packages: $packages\n";
	} else {
		print "$packages";
		print "packages empty\n";
		return 0;
	}

	this->run_system_terminal( "export DEBIAN_FRONTEND=noninteractive; apt-get remove --purge $packages" );

	this->run_system_terminal( "export DEBIAN_FRONTEND=noninteractive; apt-get autoremove --purge" );

	unlink "/tmp/temp_pkg_system";
}
# [1]

# [1]
sub remove_temp_pkg_chroot {
	my $dir = shift;

	if ( !( -e "/tmp/temp_pkg_chroot" ) ) {
		return 0;
	}

	my $packages = `cat /tmp/temp_pkg_chroot`;
	# remove all \n and replace with space
	$packages =~ s/\n/ /g;

	my $command = undef;

	print "removing temporary packages from chroot $dir.\n";
	if ( defined $packages) {
		print "packages: $packages\n";
	} else {
		print "$packages";
		print "packages empty\n";
		return 0;
	}

	if ( $packages =~ /^ *$/ ) {
		print "all is installed.\n";
		return 0;
	}

	this->run_chroot_terminal( $dir, "export DEBIAN_FRONTEND=noninteractive; export SUDO_FORCE_REMOVE=yes; apt-get remove --purge $packages" );
	this->run_chroot_terminal( $dir, "export DEBIAN_FRONTEND=noninteractive; apt-get autoremove --purge -y" );
	this->run_chroot( $dir, "apt-get clean" );

	unlink "/tmp/temp_pkg_chroot";
}
# [1]

# [1]
sub get_selected_distro {
	my ( $value ) = @_;

	my $distro;
	if ( this->{ui}->{radioButtonDebian}->isChecked() ) {
		$distro = 'debian';
	} else {
		$distro = 'ubuntu';
	}
	return $distro;
}
# [1]

# [1]
sub get_selected_release {
	my ( $value ) = @_;
	return this->{ui}->{comboBoxRelease}->currentText();
}
# [1]

# [1]
sub prepare_chroot {
	my ( $dir ) = @_;
	print "$dir\n";

	my $command;

	this->run_system( "cp /etc/resolv.conf $dir/etc/" );
	this->run_system( "cp /etc/hosts $dir/etc/" );

	#this->run_system( "mount -o bind /dev $dir/dev" );
	this->run_system( "mount -t proc none $dir/proc" );
	this->run_system( "mount -t sysfs none $dir/sys" );
	this->run_system( "mkdir -p $dir/dev/pts" );
	this->run_system( "mount -t devpts none $dir/dev/pts" );

	if ( -e "$dir/usr/bin/dbus-uuidgen" ) {
		this->run_chroot( $dir, "dbus-uuidgen > /var/lib/dbus/machine-id" );
	}

	my $initfile = this->get_chroot_initfile( $dir );

	this->run_chroot( $dir, "dpkg-divert --local --rename --add $initfile" );
	this->run_chroot( $dir, "ln -s /bin/true $initfile" );

}
# [1]

# [1]
sub release_chroot {
	my ( $dir ) = @_;
	print "$dir\n";

	my $command;

	if ( -e "$dir/usr/bin/dbus-uuidgen" ) {
		unlink "$dir/var/lib/dbus/machine-id";
	}

	my $initfile = this->get_chroot_initfile( $dir );

	unlink "$dir"."$initfile";

	this->run_chroot( $dir, "dpkg-divert --rename --remove $initfile" );

	this->run_system( "umount -l $dir/dev/pts" );
	this->run_system( "umount -l $dir/sys" );
	this->run_system( "umount -l $dir/proc" );
	#this->run_system( "umount -l $dir/dev" );

	unlink "$dir/etc/hosts";
	unlink "$dir/etc/resolv.conf";

}
# [1]

# [1]
sub get_chroot_initfile {
	my ( $dir ) = @_;
	print "$dir\n";

	my $initfile = undef;
	if ( -e "$dir/sbin/initctl" ) {
		# upstart
		$initfile = "/sbin/initctl";
	} else {
		# systemd/sysvinit
		$initfile = "/sbin/init";
	}

	return $initfile;
}
# [1]

# [1]
sub get_livesystem {
	my ( $dir ) = @_;

	my $livesys = undef;
	if ( -d "$dir/casper" ) {
		$livesys="casper";
	} else {
		$livesys="live";
	}

	return $livesys;
}
# [1]

# [1]
sub rebuild_gfxboot {
	my ( $dir ) = @_;

	my $command = undef;

	# from <http://launchpadlibrarian.net/188703593/live-build_3.0~a57-1ubuntu12_3.0~a57-1ubuntu12.1.diff.gz>
	this->run_system( "rm -rf /tmp/gfxboot; mkdir /tmp/gfxboot" );
	this->run_system( "(cd /tmp/gfxboot && cpio -i) < $dir/bootlogo" );
	this->run_system( "cp -a -f $dir/*.fnt $dir/*.hlp $dir/*jpg $dir/*.pcx $dir/*.tr $dir/*.cfg /tmp/gfxboot/" );
	this->run_system( "(cd /tmp/gfxboot/ && ls -1 | cpio --quiet -o) > $dir/bootlogo" );
	this->run_system( "rm -rf /tmp/gfxboot" );
}
# [1]

# [1]
sub fix_syslinux_theme_jessie {
	my ( $dir ) = @_;

	# in jessie there is no syslinux-themes-debian;
	# install it from wheezy to not use -t in apt-get.

	my $command = undef;
	this->run_system( "mv $dir/etc/apt/sources.list /tmp/sources.list && echo 'deb http://ftp.debian.org/debian/ wheezy main' | tee $dir/etc/apt/sources.list" );

	this->prepare_chroot( $dir );

	this->run_system( "rm -rf $dir/var/lib/apt/lists/*" );
	this->run_chroot_terminal( $dir, "apt-get update" );

	this->run_chroot_terminal( $dir, "export DEBIAN_FRONTEND=noninteractive; apt-get install syslinux-themes-debian --no-install-recommends" );

	this->run_system( "mv /tmp/sources.list $dir/etc/apt/sources.list" );

	this->run_system( "rm -rf $dir/var/lib/apt/lists/*" );
	this->run_chroot_terminal( $dir, "apt-get update" );

	this->release_chroot( $dir );

	this->run_system( "echo 'syslinux-themes-debian' >> /tmp/temp_pkg_chroot" );

}
# [1]

# [1]
sub run_system {
	my ( $command ) = @_;

	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();
	system( "echo '$command' >> $dir-builds-script.sh" );

	system ( "$command" );
	return $?;
}
# [1]

# [1]
sub run_chroot {
	my $dir = shift;
	my ( $command ) = @_;

	$command = "chroot $dir /bin/su root -l -c 'export HOME=/root; export LC_ALL=C; $command'";

	system( "echo '$command' >> $dir-builds-script.sh" );

	system ( "$command" );
	return $?;

}
# [1]

# [1]
sub run_system_terminal {
	my ( $command ) = @_;

	my $dir = this->{ui}->{lineEditROOTFSDirectory}->displayText();
	system( "echo '$command' >> $dir-builds-script.sh" );

	$command = "$command || read -p 'Error. Press any key.'";

	system 'xterm', '-e', "$command";
	return $?;
}
# [1]

# [1]
sub run_chroot_terminal {
	my $dir = shift;
	my ( $command ) = @_;

	my $exit_code = undef;

	$command = "chroot $dir /bin/su root -l -c 'export HOME=/root; export LC_ALL=C; $command'";

	system( "echo '$command' >> $dir-builds-script.sh" );

	$command = "$command || read -p 'Error. Press any key.'";

	this->prepare_chroot( $dir );

	$exit_code = system 'xterm','-e', "$command";

	this->release_chroot( $dir );

	return $exit_code;
}
# [1]

1;
