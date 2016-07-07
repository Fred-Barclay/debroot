# README

![alt tag](https://raw.githubusercontent.com/rbern/debroot/master/debroot.png)

An app that can:

* create (debootstrap) a debian or ubuntu system;
* run a shell in the chroot filesystem;
* create a live iso from the created chroot filesystem;
* unsquash, update and rebuild an existing ubuntu or debian and their derivatives live ISO image.

ATM the app does the following:

* selects and unsqhashes an Debian or Ubuntu Live iso file (content of chroot may be upgraded, see bellow) and can rebuild it (without UEFI support for now);
* chroot APT sources.list can be edited, "apt-get update/upgrade/dist-upgrade" are a button click away;
* packages can be installed in the chroot by dropping their names in a textbox and clicking "Install";
* can create a bare minbase debootstrap of Ubuntu or Debian, and from that, create a very small Live ISO, or else one can add new repositories, install packages and then build the Live iso image;
* generates a script with all the commands that were executed to replicate the process on another host without debroot.

# Bugs

* To enable "Unsquash" button you may have to type and remove text in the "ROOTFS Directory" text input;
* Some buttons are disabled because they are not implemeted yet. It is the case of "build USB image" and "chroot RDP" buttons.

Also see TODO file.

# ROADMAP

* build non-live USB image;
* add a custom script based installer to "replace" both ubiquity or debian-installer;

# Install

There are pre-built debian packages available at <https://sourceforge.net/projects/debroot/>.

One can also build a debian package from sources with:

	dpkg-buildpackage -us -uc

## Install from debian package

Install it with gdebi:

	sudo gdebi -o "APT::Install-Recommends=0" debroot_0.06_all.deb -nq

### Execute

From an installed debian package:

	sudo debroot.pl

## Install from sources

Unzip or git clone somewhere, then...

### Runtime dependencies

This is a perl QT app. To run it in debian/Ubuntu install:

	sudo apt-get install libqtgui4-perl

### Execute

From sources:

	sudo ./debroot.pl

### Development time dependencies

To develop install:

	sudo apt-get install qt4-dev-tools

To update the GUI perl module after changes made in qt4-designer type:

	make

# How to

## Quick build a clean live iso from stratch

* Select the distribution (Ubuntu or Debian) and select the release;
* If you have selected Ubuntu, on the Debootstrap tab, on the "Additional options" type "--components=main,universe" to allow to download some packages from there;
* Type the directory where the new chroot will be built in "ROOTFS directory";
* Click "Debootstrap" button and wait until it finishes;
* Click the "Build" tab. You will have a "Prepare ISO" button available while "Build ISO" is not. Click "Prepare ISO" and wait. Reply "Yes" to all package installs needed to make a Live system;
* After "Prepare ISO" is finished, the button "Build ISO" should now be available. Click it to build the Live iso of a chroot.

## Upgrade and rebuild of an existing Live ISO

* Type the directory where the ISO chroot content will be extrated in "ROOTFS directory";
* Click the "Unsquash" tab, click "Select ISO" button to select an existing ISO;
* After the file is selected the button "Unsquash" should now be available. If not add and remove text in the "ROOTFS directory" to update the UI interface (its a bug);
* Click the "Unsquash" button and wait;
* Click the "sources.list/upgrade" tab. Click the button "Read" to load the existing "sources.list" present in the chroot. Click the "Update" button to run an "apt-get update" in the chroot;
* Click the "Upgrade" button to upgrade the content of the chroot, as a "apt-get upgrade" would do. Running "dist-upgrade" is not recommended, but available;
* Click the "Install" tab to install additional packages to the live image;
* After installing or upgrading the system, click the tab "Chroot" and then click the button "Chroot Shell";
* In the shell type "apt-get autoremove --purge" and "apt-get clean" to reduce the size of the resulting live image. Type "exit" to return to the app;
* Now click the "Build" tab and the button "Build ISO" should be available. Click it.

## Rebuild non-UEFI Debian live images with UEFI support

This is a workaround for Debian 7 Wheezy and 8 Jessie and testing/Stretch, while [bug #820036](http://bugs.debian.org/820036) is not fixed for Debian 9 Stretch. It is only supported for 64 bit systems.

More info about this UEFI workaround see [James Bottomley blog](http://blog.hansenpartnership.com/linux-foundation-secure-boot-system-released/) about it.

* Type the directory where the ISO chroot content will be extrated in "ROOTFS directory";
* Click the "Unsquash" tab, click "Select ISO" button to select an existing ISO;
* After the file is selected the button "Unsquash" should now be available. If not add and remove text in the "ROOTFS directory" to update the UI interface (its a bug);
* Click the "Unsquash" button and wait;
* Now click the "Build" tab and the button "Build ISO" should be available. Click it without unchecking the checkbox "UEFI enabled".

# Tested distros (Unsquash/upgrade/rebuild)

This app works with either ubuntu and debian and their derivatives. It was tested with the following distros:

* Ubuntu 16.04;
* Debian 7 and 8 (although Debian produces Live daily builds, one can install additional packages with debroot);
* Kali Linux 2016.1;
* TAILS 2.4;
* Sparkylinux 4.3;
* Debtailor 2016-1;
* In general this app should work with any live distro that uses either casper or debian-live.

# Copyright

This project is licensed under the terms of the GNU GPL v2 License.

(c) 2016 Rui Miguel P. Bernardo

Email: rui.bernardo.pt(at)gmail.com
