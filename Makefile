Ui_DebrootForm.pm : debrootform.ui
	puic4 debrootform.ui -o Ui_DebrootForm.pm

clean :
	rm -f Ui_DebrootForm.pm

install :
	mkdir -p ${DESTDIR}/usr/sbin
	cp debroot.pl ${DESTDIR}/usr/sbin
	mkdir -p ${DESTDIR}/usr/share/perl5
	cp DebrootForm.pm ${DESTDIR}/usr/share/perl5
	cp Ui_DebrootForm.pm ${DESTDIR}/usr/share/perl5
	cp fake-grub-probe.sh ${DESTDIR}/usr/sbin
	mkdir -p ${DESTDIR}/usr/share/doc/debroot
	cp README.md ${DESTDIR}/usr/share/doc/debroot/README
