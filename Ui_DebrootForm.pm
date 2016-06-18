###############################################################################
#
###############################################################################

#################################################################################
## Form generated from reading UI file 'debrootform.ui'
##
## Created: sex Jun 17 03:19:31 2016
##      by: Qt User Interface Compiler version 4.8.6
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

package Ui_DebrootForm;

use strict;
use warnings;
use QtCore4;
use QtGui4;

sub groupBox {
    return shift->{groupBox};
}

sub radioButtonDebian {
    return shift->{radioButtonDebian};
}

sub radioButtonUbuntu {
    return shift->{radioButtonUbuntu};
}

sub groupBox_2 {
    return shift->{groupBox_2};
}

sub comboBoxRelease {
    return shift->{comboBoxRelease};
}

sub tabWidget {
    return shift->{tabWidget};
}

sub tab_6 {
    return shift->{tab_6};
}

sub lineEditISOPath {
    return shift->{lineEditISOPath};
}

sub pushButtonSelectISO {
    return shift->{pushButtonSelectISO};
}

sub pushButtonUnsquash {
    return shift->{pushButtonUnsquash};
}

sub label_4 {
    return shift->{label_4};
}

sub tab {
    return shift->{tab};
}

sub pushButtonDebootstrap {
    return shift->{pushButtonDebootstrap};
}

sub label_2 {
    return shift->{label_2};
}

sub lineEditDebootstrapMirror {
    return shift->{lineEditDebootstrapMirror};
}

sub groupBox_3 {
    return shift->{groupBox_3};
}

sub comboBoxArch {
    return shift->{comboBoxArch};
}

sub checkBoxVariantMinBase {
    return shift->{checkBoxVariantMinBase};
}

sub label_3 {
    return shift->{label_3};
}

sub lineEditDebootstrapAdditionalOptions {
    return shift->{lineEditDebootstrapAdditionalOptions};
}

sub tab_2 {
    return shift->{tab_2};
}

sub plainTextEditSourcesList {
    return shift->{plainTextEditSourcesList};
}

sub pushButtonRead {
    return shift->{pushButtonRead};
}

sub pushButtonWrite {
    return shift->{pushButtonWrite};
}

sub pushButtonSourcesHelp {
    return shift->{pushButtonSourcesHelp};
}

sub pushButtonUpdate {
    return shift->{pushButtonUpdate};
}

sub pushButtonUpgrade {
    return shift->{pushButtonUpgrade};
}

sub pushButtonDistUpgrade {
    return shift->{pushButtonDistUpgrade};
}

sub tab_3 {
    return shift->{tab_3};
}

sub plainTextEditInstall {
    return shift->{plainTextEditInstall};
}

sub pushButtonInstallHelp {
    return shift->{pushButtonInstallHelp};
}

sub pushButtonInstall {
    return shift->{pushButtonInstall};
}

sub checkBoxUnauthenticated {
    return shift->{checkBoxUnauthenticated};
}

sub checkBoxRecommends {
    return shift->{checkBoxRecommends};
}

sub checkBoxForceYes {
    return shift->{checkBoxForceYes};
}

sub tab_4 {
    return shift->{tab_4};
}

sub pushButtonChrootShell {
    return shift->{pushButtonChrootShell};
}

sub pushButtonChrootRDP {
    return shift->{pushButtonChrootRDP};
}

sub tab_5 {
    return shift->{tab_5};
}

sub pushButtonBuildLiveISO {
    return shift->{pushButtonBuildLiveISO};
}

sub pushButtonBuildUSBIMG {
    return shift->{pushButtonBuildUSBIMG};
}

sub checkBoxUEFI {
    return shift->{checkBoxUEFI};
}

sub checkBoxCustomInstaller {
    return shift->{checkBoxCustomInstaller};
}

sub pushButtonBackupROOTFS {
    return shift->{pushButtonBackupROOTFS};
}

sub pushButtonRebuildLiveISO {
    return shift->{pushButtonRebuildLiveISO};
}

sub label {
    return shift->{label};
}

sub lineEditROOTFSDirectory {
    return shift->{lineEditROOTFSDirectory};
}


sub setupUi {
    my ( $class, $debrootForm ) = @_;
    my $self = bless {}, $class;
    if ( !defined $debrootForm->objectName() ) {
        $debrootForm->setObjectName( "debrootForm" );
    }
    $debrootForm->resize( 552, 445 );
    my $groupBox = Qt::GroupBox( $debrootForm );
    $self->{groupBox} = $groupBox;
    $groupBox->setObjectName( "groupBox" );
    $groupBox->setGeometry( Qt::Rect(100, 20, 120, 101) );
    my $radioButtonDebian = Qt::RadioButton( $groupBox );
    $self->{radioButtonDebian} = $radioButtonDebian;
    $radioButtonDebian->setObjectName( "radioButtonDebian" );
    $radioButtonDebian->setGeometry( Qt::Rect(10, 20, 105, 20) );
    my $radioButtonUbuntu = Qt::RadioButton( $groupBox );
    $self->{radioButtonUbuntu} = $radioButtonUbuntu;
    $radioButtonUbuntu->setObjectName( "radioButtonUbuntu" );
    $radioButtonUbuntu->setGeometry( Qt::Rect(10, 50, 105, 20) );
    my $groupBox_2 = Qt::GroupBox( $debrootForm );
    $self->{groupBox_2} = $groupBox_2;
    $groupBox_2->setObjectName( "groupBox_2" );
    $groupBox_2->setGeometry( Qt::Rect(310, 20, 120, 101) );
    my $comboBoxRelease = Qt::ComboBox( $groupBox_2 );
    $self->{comboBoxRelease} = $comboBoxRelease;
    $comboBoxRelease->setObjectName( "comboBoxRelease" );
    $comboBoxRelease->setGeometry( Qt::Rect(10, 20, 101, 25) );
    my $tabWidget = Qt::TabWidget( $debrootForm );
    $self->{tabWidget} = $tabWidget;
    $tabWidget->setObjectName( "tabWidget" );
    $tabWidget->setGeometry( Qt::Rect(10, 200, 531, 231) );
    my $tab_6 = Qt::Widget(  );
    $self->{tab_6} = $tab_6;
    $tab_6->setObjectName( "tab_6" );
    my $lineEditISOPath = Qt::LineEdit( $tab_6 );
    $self->{lineEditISOPath} = $lineEditISOPath;
    $lineEditISOPath->setObjectName( "lineEditISOPath" );
    $lineEditISOPath->setGeometry( Qt::Rect(150, 30, 361, 25) );
    my $pushButtonSelectISO = Qt::PushButton( $tab_6 );
    $self->{pushButtonSelectISO} = $pushButtonSelectISO;
    $pushButtonSelectISO->setObjectName( "pushButtonSelectISO" );
    $pushButtonSelectISO->setGeometry( Qt::Rect(10, 30, 121, 27) );
    my $pushButtonUnsquash = Qt::PushButton( $tab_6 );
    $self->{pushButtonUnsquash} = $pushButtonUnsquash;
    $pushButtonUnsquash->setObjectName( "pushButtonUnsquash" );
    $pushButtonUnsquash->setGeometry( Qt::Rect(100, 150, 311, 27) );
    my $label_4 = Qt::Label( $tab_6 );
    $self->{label_4} = $label_4;
    $label_4->setObjectName( "label_4" );
    $label_4->setGeometry( Qt::Rect(10, 60, 491, 81) );
    $label_4->setTextFormat( Qt::AutoText() );
    $label_4->setWordWrap( 1 );
    $tabWidget->addTab( $tab_6, Qt::Application::translate( 'DebrootForm', "Unsquash ISO", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab = Qt::Widget(  );
    $self->{tab} = $tab;
    $tab->setObjectName( "tab" );
    my $pushButtonDebootstrap = Qt::PushButton( $tab );
    $self->{pushButtonDebootstrap} = $pushButtonDebootstrap;
    $pushButtonDebootstrap->setObjectName( "pushButtonDebootstrap" );
    $pushButtonDebootstrap->setGeometry( Qt::Rect(420, 140, 92, 51) );
    my $label_2 = Qt::Label( $tab );
    $self->{label_2} = $label_2;
    $label_2->setObjectName( "label_2" );
    $label_2->setGeometry( Qt::Rect(10, 30, 41, 16) );
    my $lineEditDebootstrapMirror = Qt::LineEdit( $tab );
    $self->{lineEditDebootstrapMirror} = $lineEditDebootstrapMirror;
    $lineEditDebootstrapMirror->setObjectName( "lineEditDebootstrapMirror" );
    $lineEditDebootstrapMirror->setGeometry( Qt::Rect(10, 50, 511, 25) );
    my $groupBox_3 = Qt::GroupBox( $tab );
    $self->{groupBox_3} = $groupBox_3;
    $groupBox_3->setObjectName( "groupBox_3" );
    $groupBox_3->setGeometry( Qt::Rect(260, 130, 120, 71) );
    my $comboBoxArch = Qt::ComboBox( $groupBox_3 );
    $self->{comboBoxArch} = $comboBoxArch;
    $comboBoxArch->setObjectName( "comboBoxArch" );
    $comboBoxArch->setGeometry( Qt::Rect(10, 30, 78, 21) );
    my $checkBoxVariantMinBase = Qt::CheckBox( $tab );
    $self->{checkBoxVariantMinBase} = $checkBoxVariantMinBase;
    $checkBoxVariantMinBase->setObjectName( "checkBoxVariantMinBase" );
    $checkBoxVariantMinBase->setGeometry( Qt::Rect(10, 10, 151, 20) );
    my $label_3 = Qt::Label( $tab );
    $self->{label_3} = $label_3;
    $label_3->setObjectName( "label_3" );
    $label_3->setGeometry( Qt::Rect(10, 80, 271, 16) );
    my $lineEditDebootstrapAdditionalOptions = Qt::LineEdit( $tab );
    $self->{lineEditDebootstrapAdditionalOptions} = $lineEditDebootstrapAdditionalOptions;
    $lineEditDebootstrapAdditionalOptions->setObjectName( "lineEditDebootstrapAdditionalOptions" );
    $lineEditDebootstrapAdditionalOptions->setGeometry( Qt::Rect(10, 100, 511, 25) );
    $tabWidget->addTab( $tab, Qt::Application::translate( 'DebrootForm', "Debootstrap", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_2 = Qt::Widget(  );
    $self->{tab_2} = $tab_2;
    $tab_2->setObjectName( "tab_2" );
    my $plainTextEditSourcesList = Qt::PlainTextEdit( $tab_2 );
    $self->{plainTextEditSourcesList} = $plainTextEditSourcesList;
    $plainTextEditSourcesList->setObjectName( "plainTextEditSourcesList" );
    $plainTextEditSourcesList->setGeometry( Qt::Rect(10, 10, 511, 111) );
    my $pushButtonRead = Qt::PushButton( $tab_2 );
    $self->{pushButtonRead} = $pushButtonRead;
    $pushButtonRead->setObjectName( "pushButtonRead" );
    $pushButtonRead->setGeometry( Qt::Rect(10, 130, 61, 27) );
    my $pushButtonWrite = Qt::PushButton( $tab_2 );
    $self->{pushButtonWrite} = $pushButtonWrite;
    $pushButtonWrite->setObjectName( "pushButtonWrite" );
    $pushButtonWrite->setGeometry( Qt::Rect(80, 130, 71, 27) );
    my $pushButtonSourcesHelp = Qt::PushButton( $tab_2 );
    $self->{pushButtonSourcesHelp} = $pushButtonSourcesHelp;
    $pushButtonSourcesHelp->setObjectName( "pushButtonSourcesHelp" );
    $pushButtonSourcesHelp->setGeometry( Qt::Rect(450, 130, 71, 27) );
    my $pushButtonUpdate = Qt::PushButton( $tab_2 );
    $self->{pushButtonUpdate} = $pushButtonUpdate;
    $pushButtonUpdate->setObjectName( "pushButtonUpdate" );
    $pushButtonUpdate->setGeometry( Qt::Rect(10, 160, 111, 27) );
    my $pushButtonUpgrade = Qt::PushButton( $tab_2 );
    $self->{pushButtonUpgrade} = $pushButtonUpgrade;
    $pushButtonUpgrade->setObjectName( "pushButtonUpgrade" );
    $pushButtonUpgrade->setGeometry( Qt::Rect(310, 160, 92, 27) );
    my $pushButtonDistUpgrade = Qt::PushButton( $tab_2 );
    $self->{pushButtonDistUpgrade} = $pushButtonDistUpgrade;
    $pushButtonDistUpgrade->setObjectName( "pushButtonDistUpgrade" );
    $pushButtonDistUpgrade->setGeometry( Qt::Rect(410, 160, 111, 27) );
    $tabWidget->addTab( $tab_2, Qt::Application::translate( 'DebrootForm', "sources.list/upgrade", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_3 = Qt::Widget(  );
    $self->{tab_3} = $tab_3;
    $tab_3->setObjectName( "tab_3" );
    my $plainTextEditInstall = Qt::PlainTextEdit( $tab_3 );
    $self->{plainTextEditInstall} = $plainTextEditInstall;
    $plainTextEditInstall->setObjectName( "plainTextEditInstall" );
    $plainTextEditInstall->setGeometry( Qt::Rect(10, 10, 511, 111) );
    my $pushButtonInstallHelp = Qt::PushButton( $tab_3 );
    $self->{pushButtonInstallHelp} = $pushButtonInstallHelp;
    $pushButtonInstallHelp->setObjectName( "pushButtonInstallHelp" );
    $pushButtonInstallHelp->setGeometry( Qt::Rect(10, 120, 92, 71) );
    my $pushButtonInstall = Qt::PushButton( $tab_3 );
    $self->{pushButtonInstall} = $pushButtonInstall;
    $pushButtonInstall->setObjectName( "pushButtonInstall" );
    $pushButtonInstall->setGeometry( Qt::Rect(430, 120, 92, 71) );
    my $checkBoxUnauthenticated = Qt::CheckBox( $tab_3 );
    $self->{checkBoxUnauthenticated} = $checkBoxUnauthenticated;
    $checkBoxUnauthenticated->setObjectName( "checkBoxUnauthenticated" );
    $checkBoxUnauthenticated->setGeometry( Qt::Rect(170, 130, 191, 20) );
    my $checkBoxRecommends = Qt::CheckBox( $tab_3 );
    $self->{checkBoxRecommends} = $checkBoxRecommends;
    $checkBoxRecommends->setObjectName( "checkBoxRecommends" );
    $checkBoxRecommends->setGeometry( Qt::Rect(170, 150, 191, 20) );
    my $checkBoxForceYes = Qt::CheckBox( $tab_3 );
    $self->{checkBoxForceYes} = $checkBoxForceYes;
    $checkBoxForceYes->setObjectName( "checkBoxForceYes" );
    $checkBoxForceYes->setGeometry( Qt::Rect(170, 170, 121, 20) );
    $tabWidget->addTab( $tab_3, Qt::Application::translate( 'DebrootForm', "Install", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_4 = Qt::Widget(  );
    $self->{tab_4} = $tab_4;
    $tab_4->setObjectName( "tab_4" );
    my $pushButtonChrootShell = Qt::PushButton( $tab_4 );
    $self->{pushButtonChrootShell} = $pushButtonChrootShell;
    $pushButtonChrootShell->setObjectName( "pushButtonChrootShell" );
    $pushButtonChrootShell->setGeometry( Qt::Rect(200, 50, 92, 27) );
    my $pushButtonChrootRDP = Qt::PushButton( $tab_4 );
    $self->{pushButtonChrootRDP} = $pushButtonChrootRDP;
    $pushButtonChrootRDP->setObjectName( "pushButtonChrootRDP" );
    $pushButtonChrootRDP->setEnabled( 0 );
    $pushButtonChrootRDP->setGeometry( Qt::Rect(200, 90, 92, 27) );
    $tabWidget->addTab( $tab_4, Qt::Application::translate( 'DebrootForm', "Chroot", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_5 = Qt::Widget(  );
    $self->{tab_5} = $tab_5;
    $tab_5->setObjectName( "tab_5" );
    my $pushButtonBuildLiveISO = Qt::PushButton( $tab_5 );
    $self->{pushButtonBuildLiveISO} = $pushButtonBuildLiveISO;
    $pushButtonBuildLiveISO->setObjectName( "pushButtonBuildLiveISO" );
    $pushButtonBuildLiveISO->setEnabled( 1 );
    $pushButtonBuildLiveISO->setGeometry( Qt::Rect(160, 100, 111, 27) );
    my $pushButtonBuildUSBIMG = Qt::PushButton( $tab_5 );
    $self->{pushButtonBuildUSBIMG} = $pushButtonBuildUSBIMG;
    $pushButtonBuildUSBIMG->setObjectName( "pushButtonBuildUSBIMG" );
    $pushButtonBuildUSBIMG->setEnabled( 0 );
    $pushButtonBuildUSBIMG->setGeometry( Qt::Rect(290, 100, 111, 27) );
    my $checkBoxUEFI = Qt::CheckBox( $tab_5 );
    $self->{checkBoxUEFI} = $checkBoxUEFI;
    $checkBoxUEFI->setObjectName( "checkBoxUEFI" );
    $checkBoxUEFI->setEnabled( 0 );
    $checkBoxUEFI->setGeometry( Qt::Rect(60, 30, 131, 20) );
    my $checkBoxCustomInstaller = Qt::CheckBox( $tab_5 );
    $self->{checkBoxCustomInstaller} = $checkBoxCustomInstaller;
    $checkBoxCustomInstaller->setObjectName( "checkBoxCustomInstaller" );
    $checkBoxCustomInstaller->setEnabled( 0 );
    $checkBoxCustomInstaller->setGeometry( Qt::Rect(60, 50, 271, 20) );
    my $pushButtonBackupROOTFS = Qt::PushButton( $tab_5 );
    $self->{pushButtonBackupROOTFS} = $pushButtonBackupROOTFS;
    $pushButtonBackupROOTFS->setObjectName( "pushButtonBackupROOTFS" );
    $pushButtonBackupROOTFS->setGeometry( Qt::Rect(410, 100, 92, 27) );
    my $pushButtonRebuildLiveISO = Qt::PushButton( $tab_5 );
    $self->{pushButtonRebuildLiveISO} = $pushButtonRebuildLiveISO;
    $pushButtonRebuildLiveISO->setObjectName( "pushButtonRebuildLiveISO" );
    $pushButtonRebuildLiveISO->setEnabled( 1 );
    $pushButtonRebuildLiveISO->setGeometry( Qt::Rect(20, 100, 131, 27) );
    $tabWidget->addTab( $tab_5, Qt::Application::translate( 'DebrootForm', "Build", undef, Qt::Application::UnicodeUTF8() ) );
    my $label = Qt::Label( $debrootForm );
    $self->{label} = $label;
    $label->setObjectName( "label" );
    $label->setGeometry( Qt::Rect(20, 150, 131, 20) );
    my $lineEditROOTFSDirectory = Qt::LineEdit( $debrootForm );
    $self->{lineEditROOTFSDirectory} = $lineEditROOTFSDirectory;
    $lineEditROOTFSDirectory->setObjectName( "lineEditROOTFSDirectory" );
    $lineEditROOTFSDirectory->setGeometry( Qt::Rect(160, 150, 281, 25) );

    $self->retranslateUi( $debrootForm );

    $tabWidget->setCurrentIndex( 1 );


    Qt::MetaObject::connectSlotsByName( $debrootForm );
    return $self;
} # setupUi

sub setup_ui {
    my ( $debrootForm ) = @_;
    return setupUi( $debrootForm );
}

sub retranslateUi {
    my ( $self, $debrootForm ) = @_;
    $debrootForm->setWindowTitle( Qt::Application::translate( 'DebrootForm', "debroot", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{groupBox}->setTitle( Qt::Application::translate( 'DebrootForm', "Distribution", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{radioButtonDebian}->setText( Qt::Application::translate( 'DebrootForm', "Debian", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{radioButtonUbuntu}->setText( Qt::Application::translate( 'DebrootForm', "Ubuntu", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{groupBox_2}->setTitle( Qt::Application::translate( 'DebrootForm', "Release", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonSelectISO}->setText( Qt::Application::translate( 'DebrootForm', "Select Live ISO", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonUnsquash}->setText( Qt::Application::translate( 'DebrootForm', "Unsquash selected ISO to ROOTFS directory", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label_4}->setText( Qt::Application::translate( 'DebrootForm', "<html><head/><body><p align=\"justify\"><span style=\" font-size:7pt;\">Please note that you still have to select &quot;Debian&quot; or &quot;Ubuntu&quot; above. Different distros use different settings.</span></p><p align=\"justify\"><span style=\" font-size:7pt;\">Besides unsquashing the chroot filesystem of the Live ISO file to the ROOTFS directory, the binary part of the ISO will be extracted to a paralell directory along with ROOTFS, called XXXX-binary. Later, this directory will be used to rebuild the Live ISO file.</span></p></body></html>", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_6}), Qt::Application::translate( 'DebrootForm', "Unsquash ISO", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonDebootstrap}->setText( Qt::Application::translate( 'DebrootForm', "debootstrap", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label_2}->setText( Qt::Application::translate( 'DebrootForm', "Mirror:", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{groupBox_3}->setTitle( Qt::Application::translate( 'DebrootForm', "Architecture", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxVariantMinBase}->setText( Qt::Application::translate( 'DebrootForm', "--variant=minbase", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label_3}->setText( Qt::Application::translate( 'DebrootForm', "Additional debootstrap options to be used:", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab}), Qt::Application::translate( 'DebrootForm', "Debootstrap", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonRead}->setText( Qt::Application::translate( 'DebrootForm', "Read", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonWrite}->setText( Qt::Application::translate( 'DebrootForm', "Write", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonSourcesHelp}->setText( Qt::Application::translate( 'DebrootForm', "Help", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonUpdate}->setText( Qt::Application::translate( 'DebrootForm', "Update", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonUpgrade}->setText( Qt::Application::translate( 'DebrootForm', "Upgrade", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonDistUpgrade}->setText( Qt::Application::translate( 'DebrootForm', "Dist-Upgrade", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_2}), Qt::Application::translate( 'DebrootForm', "sources.list/upgrade", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonInstallHelp}->setText( Qt::Application::translate( 'DebrootForm', "Help", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonInstall}->setText( Qt::Application::translate( 'DebrootForm', "Install", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxUnauthenticated}->setText( Qt::Application::translate( 'DebrootForm', "--allow-unauthenticated", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxRecommends}->setText( Qt::Application::translate( 'DebrootForm', "--no-install-recommends", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxForceYes}->setText( Qt::Application::translate( 'DebrootForm', "-y --force-yes", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_3}), Qt::Application::translate( 'DebrootForm', "Install", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonChrootShell}->setText( Qt::Application::translate( 'DebrootForm', "Chroot Shell", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonChrootRDP}->setText( Qt::Application::translate( 'DebrootForm', "Chroot RDP", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_4}), Qt::Application::translate( 'DebrootForm', "Chroot", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonBuildLiveISO}->setText( Qt::Application::translate( 'DebrootForm', "Build Live ISO", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonBuildUSBIMG}->setText( Qt::Application::translate( 'DebrootForm', "Build USB IMG", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxUEFI}->setText( Qt::Application::translate( 'DebrootForm', "UEFI enabled", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxCustomInstaller}->setText( Qt::Application::translate( 'DebrootForm', "Add custom disk installer to image", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonBackupROOTFS}->setToolTip( Qt::Application::translate( 'DebrootForm', "Backup ROOTFS directory to a .tar.gz file for future use.", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonBackupROOTFS}->setText( Qt::Application::translate( 'DebrootForm', "Backup", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonRebuildLiveISO}->setText( Qt::Application::translate( 'DebrootForm', "Rebuild Live ISO", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_5}), Qt::Application::translate( 'DebrootForm', "Build", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label}->setText( Qt::Application::translate( 'DebrootForm', "ROOTFS Directory:", undef, Qt::Application::UnicodeUTF8() ) );
} # retranslateUi

sub retranslate_ui {
    my ( $debrootForm ) = @_;
    retranslateUi( $debrootForm );
}

1;