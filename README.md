# README

This app started while exploring perl and QT. It started as an app that could create and run chroots. When this was reached, the potentialities of perl QT made me want go further and from the chroot I wanted to make a Live iso image. As the doors where opening I added support for Ubuntu and Debian and made the app create a bash script (instead of keeping build logs) that can rebuild the whole process without the use of this app.

ATM the app does the following:

* selects and unsqhashes an Debian or Ubuntu Live iso file (content of chroot may be upgraded, see bellow) and can rebuild it (without UEFI support for now);
* chroot APT sources.list can be edited, "apt-get update/upgrade/dist-upgrade" are a button click away;
* packages can be installed in the chroot by dropping their names in a textbox and clicking "Install";
* can create a bare minbase debootstrap of Ubuntu or Debian, and from that, create a very small Live ISO, or else one can add new repositories, install packages and then build the Live iso image.

# Bugs

Still many. See TODO file.

* If you started from a debootstrap rootfs, in the "Build" tab clik "Build Live ISO" and then "Rebuild Live ISO" to actually create the iso;
* If you started from a debian/ubuntu Live iso, in the "Build" tab then only click "Rebuild Live ISO" to create the iso;
* To enable "Unsquash" button you may have to type and remove text in the "ROOTFS Directory" text input;
* some buttons are disabled because they are not implemeted yet.

# ROADMAP

* rearrange GUI interface;
* debian packaging;
* build non-live USB image;
* add a custom script based installer to "replace" both ubiquity or debian-installer;
* support UEFI boot.

## Dependencies

### Runtime

This is a perl QT app. To run it in debian/Ubuntu install:

	sudo apt-get install libqtgui4-perl

### Build time

To develop install:

	sudo apt-get install qt4-dev-tools

To update the GUI after changes made in qt4-designer:

	make

### Execute

	sudo ./debroot.pl

# Copyright

This project is licensed under the terms of the GNU GPL v2 License.

(c) 2016 Rui Miguel P. Bernardo

Email: rui.bernardo.pt@gmail.com
