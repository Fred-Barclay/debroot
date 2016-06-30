###############################################################################
# 
###############################################################################

#################################################################################
## Form generated from reading UI file 'debrootform.ui'
##
## Created: sex Jul 1 12:33:10 2016
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

sub tab_Unsquash {
    return shift->{tab_Unsquash};
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

sub tab_Debbootstrap {
    return shift->{tab_Debbootstrap};
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

sub tab_Upgrade {
    return shift->{tab_Upgrade};
}

sub plainTextEditSourcesList {
    return shift->{plainTextEditSourcesList};
}

sub pushButtonRead {
    return shift->{pushButtonRead};
}

sub pushButtonSave {
    return shift->{pushButtonSave};
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

sub label_7 {
    return shift->{label_7};
}

sub label_8 {
    return shift->{label_8};
}

sub tab_Install {
    return shift->{tab_Install};
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

sub pushButtonInstallSelectPreseedFile {
    return shift->{pushButtonInstallSelectPreseedFile};
}

sub lineEditInstallPreseedFile {
    return shift->{lineEditInstallPreseedFile};
}

sub label_6 {
    return shift->{label_6};
}

sub tab_Chroot {
    return shift->{tab_Chroot};
}

sub pushButtonChrootShell {
    return shift->{pushButtonChrootShell};
}

sub pushButtonChrootRDP {
    return shift->{pushButtonChrootRDP};
}

sub tab_Build {
    return shift->{tab_Build};
}

sub checkBoxUEFI {
    return shift->{checkBoxUEFI};
}

sub checkBoxCustomInstaller {
    return shift->{checkBoxCustomInstaller};
}

sub groupBox_4 {
    return shift->{groupBox_4};
}

sub pushButtonPrepareLiveISO {
    return shift->{pushButtonPrepareLiveISO};
}

sub pushButtonBuildLiveISO {
    return shift->{pushButtonBuildLiveISO};
}

sub groupBox_5 {
    return shift->{groupBox_5};
}

sub pushButtonBuildUSBIMG {
    return shift->{pushButtonBuildUSBIMG};
}

sub lineEditBuildUSBUsername {
    return shift->{lineEditBuildUSBUsername};
}

sub label_5 {
    return shift->{label_5};
}

sub groupBox_6 {
    return shift->{groupBox_6};
}

sub pushButtonBackupROOTFS {
    return shift->{pushButtonBackupROOTFS};
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
    my $tab_Unsquash = Qt::Widget(  );
    $self->{tab_Unsquash} = $tab_Unsquash;
    $tab_Unsquash->setObjectName( "tab_Unsquash" );
    my $lineEditISOPath = Qt::LineEdit( $tab_Unsquash );
    $self->{lineEditISOPath} = $lineEditISOPath;
    $lineEditISOPath->setObjectName( "lineEditISOPath" );
    $lineEditISOPath->setGeometry( Qt::Rect(150, 30, 361, 25) );
    my $pushButtonSelectISO = Qt::PushButton( $tab_Unsquash );
    $self->{pushButtonSelectISO} = $pushButtonSelectISO;
    $pushButtonSelectISO->setObjectName( "pushButtonSelectISO" );
    $pushButtonSelectISO->setGeometry( Qt::Rect(10, 30, 121, 27) );
    my $pushButtonUnsquash = Qt::PushButton( $tab_Unsquash );
    $self->{pushButtonUnsquash} = $pushButtonUnsquash;
    $pushButtonUnsquash->setObjectName( "pushButtonUnsquash" );
    $pushButtonUnsquash->setEnabled( 0 );
    $pushButtonUnsquash->setGeometry( Qt::Rect(100, 150, 311, 27) );
    my $label_4 = Qt::Label( $tab_Unsquash );
    $self->{label_4} = $label_4;
    $label_4->setObjectName( "label_4" );
    $label_4->setGeometry( Qt::Rect(10, 60, 491, 81) );
    $label_4->setTextFormat( Qt::AutoText() );
    $label_4->setWordWrap( 1 );
    $tabWidget->addTab( $tab_Unsquash, Qt::Application::translate( 'DebrootForm', "Unsquash ISO", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_Debbootstrap = Qt::Widget(  );
    $self->{tab_Debbootstrap} = $tab_Debbootstrap;
    $tab_Debbootstrap->setObjectName( "tab_Debbootstrap" );
    my $pushButtonDebootstrap = Qt::PushButton( $tab_Debbootstrap );
    $self->{pushButtonDebootstrap} = $pushButtonDebootstrap;
    $pushButtonDebootstrap->setObjectName( "pushButtonDebootstrap" );
    $pushButtonDebootstrap->setEnabled( 0 );
    $pushButtonDebootstrap->setGeometry( Qt::Rect(420, 140, 92, 51) );
    my $label_2 = Qt::Label( $tab_Debbootstrap );
    $self->{label_2} = $label_2;
    $label_2->setObjectName( "label_2" );
    $label_2->setGeometry( Qt::Rect(10, 30, 41, 16) );
    my $lineEditDebootstrapMirror = Qt::LineEdit( $tab_Debbootstrap );
    $self->{lineEditDebootstrapMirror} = $lineEditDebootstrapMirror;
    $lineEditDebootstrapMirror->setObjectName( "lineEditDebootstrapMirror" );
    $lineEditDebootstrapMirror->setGeometry( Qt::Rect(10, 50, 511, 25) );
    my $groupBox_3 = Qt::GroupBox( $tab_Debbootstrap );
    $self->{groupBox_3} = $groupBox_3;
    $groupBox_3->setObjectName( "groupBox_3" );
    $groupBox_3->setGeometry( Qt::Rect(260, 130, 120, 71) );
    my $comboBoxArch = Qt::ComboBox( $groupBox_3 );
    $self->{comboBoxArch} = $comboBoxArch;
    $comboBoxArch->setObjectName( "comboBoxArch" );
    $comboBoxArch->setGeometry( Qt::Rect(10, 30, 78, 21) );
    my $checkBoxVariantMinBase = Qt::CheckBox( $tab_Debbootstrap );
    $self->{checkBoxVariantMinBase} = $checkBoxVariantMinBase;
    $checkBoxVariantMinBase->setObjectName( "checkBoxVariantMinBase" );
    $checkBoxVariantMinBase->setGeometry( Qt::Rect(10, 10, 151, 20) );
    my $label_3 = Qt::Label( $tab_Debbootstrap );
    $self->{label_3} = $label_3;
    $label_3->setObjectName( "label_3" );
    $label_3->setGeometry( Qt::Rect(10, 80, 271, 16) );
    my $lineEditDebootstrapAdditionalOptions = Qt::LineEdit( $tab_Debbootstrap );
    $self->{lineEditDebootstrapAdditionalOptions} = $lineEditDebootstrapAdditionalOptions;
    $lineEditDebootstrapAdditionalOptions->setObjectName( "lineEditDebootstrapAdditionalOptions" );
    $lineEditDebootstrapAdditionalOptions->setGeometry( Qt::Rect(10, 100, 511, 25) );
    $tabWidget->addTab( $tab_Debbootstrap, Qt::Application::translate( 'DebrootForm', "Debootstrap", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_Upgrade = Qt::Widget(  );
    $self->{tab_Upgrade} = $tab_Upgrade;
    $tab_Upgrade->setObjectName( "tab_Upgrade" );
    my $plainTextEditSourcesList = Qt::PlainTextEdit( $tab_Upgrade );
    $self->{plainTextEditSourcesList} = $plainTextEditSourcesList;
    $plainTextEditSourcesList->setObjectName( "plainTextEditSourcesList" );
    $plainTextEditSourcesList->setGeometry( Qt::Rect(10, 10, 511, 111) );
    my $pushButtonRead = Qt::PushButton( $tab_Upgrade );
    $self->{pushButtonRead} = $pushButtonRead;
    $pushButtonRead->setObjectName( "pushButtonRead" );
    $pushButtonRead->setEnabled( 0 );
    $pushButtonRead->setGeometry( Qt::Rect(10, 160, 61, 27) );
    my $pushButtonSave = Qt::PushButton( $tab_Upgrade );
    $self->{pushButtonSave} = $pushButtonSave;
    $pushButtonSave->setObjectName( "pushButtonSave" );
    $pushButtonSave->setEnabled( 0 );
    $pushButtonSave->setGeometry( Qt::Rect(80, 160, 71, 27) );
    my $pushButtonSourcesHelp = Qt::PushButton( $tab_Upgrade );
    $self->{pushButtonSourcesHelp} = $pushButtonSourcesHelp;
    $pushButtonSourcesHelp->setObjectName( "pushButtonSourcesHelp" );
    $pushButtonSourcesHelp->setGeometry( Qt::Rect(450, 130, 71, 27) );
    my $pushButtonUpdate = Qt::PushButton( $tab_Upgrade );
    $self->{pushButtonUpdate} = $pushButtonUpdate;
    $pushButtonUpdate->setObjectName( "pushButtonUpdate" );
    $pushButtonUpdate->setEnabled( 0 );
    $pushButtonUpdate->setGeometry( Qt::Rect(190, 160, 111, 27) );
    my $pushButtonUpgrade = Qt::PushButton( $tab_Upgrade );
    $self->{pushButtonUpgrade} = $pushButtonUpgrade;
    $pushButtonUpgrade->setObjectName( "pushButtonUpgrade" );
    $pushButtonUpgrade->setEnabled( 0 );
    $pushButtonUpgrade->setGeometry( Qt::Rect(310, 160, 92, 27) );
    my $pushButtonDistUpgrade = Qt::PushButton( $tab_Upgrade );
    $self->{pushButtonDistUpgrade} = $pushButtonDistUpgrade;
    $pushButtonDistUpgrade->setObjectName( "pushButtonDistUpgrade" );
    $pushButtonDistUpgrade->setEnabled( 0 );
    $pushButtonDistUpgrade->setGeometry( Qt::Rect(410, 160, 111, 27) );
    my $label_7 = Qt::Label( $tab_Upgrade );
    $self->{label_7} = $label_7;
    $label_7->setObjectName( "label_7" );
    $label_7->setGeometry( Qt::Rect(10, 140, 101, 16) );
    my $font = Qt::Font();
    $font->setBold( 1 );
    $font->setWeight( 75 );
    $label_7->setFont( $font );
    my $label_8 = Qt::Label( $tab_Upgrade );
    $self->{label_8} = $label_8;
    $label_8->setObjectName( "label_8" );
    $label_8->setGeometry( Qt::Rect(190, 140, 59, 15) );
    $label_8->setFont( $font );
    $tabWidget->addTab( $tab_Upgrade, Qt::Application::translate( 'DebrootForm', "sources.list/upgrade", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_Install = Qt::Widget(  );
    $self->{tab_Install} = $tab_Install;
    $tab_Install->setObjectName( "tab_Install" );
    my $plainTextEditInstall = Qt::PlainTextEdit( $tab_Install );
    $self->{plainTextEditInstall} = $plainTextEditInstall;
    $plainTextEditInstall->setObjectName( "plainTextEditInstall" );
    $plainTextEditInstall->setGeometry( Qt::Rect(10, 30, 511, 91) );
    my $pushButtonInstallHelp = Qt::PushButton( $tab_Install );
    $self->{pushButtonInstallHelp} = $pushButtonInstallHelp;
    $pushButtonInstallHelp->setObjectName( "pushButtonInstallHelp" );
    $pushButtonInstallHelp->setGeometry( Qt::Rect(430, 180, 92, 21) );
    my $pushButtonInstall = Qt::PushButton( $tab_Install );
    $self->{pushButtonInstall} = $pushButtonInstall;
    $pushButtonInstall->setObjectName( "pushButtonInstall" );
    $pushButtonInstall->setEnabled( 0 );
    $pushButtonInstall->setGeometry( Qt::Rect(430, 120, 92, 51) );
    my $checkBoxUnauthenticated = Qt::CheckBox( $tab_Install );
    $self->{checkBoxUnauthenticated} = $checkBoxUnauthenticated;
    $checkBoxUnauthenticated->setObjectName( "checkBoxUnauthenticated" );
    $checkBoxUnauthenticated->setGeometry( Qt::Rect(230, 130, 191, 20) );
    my $checkBoxRecommends = Qt::CheckBox( $tab_Install );
    $self->{checkBoxRecommends} = $checkBoxRecommends;
    $checkBoxRecommends->setObjectName( "checkBoxRecommends" );
    $checkBoxRecommends->setGeometry( Qt::Rect(230, 150, 191, 20) );
    $checkBoxRecommends->setChecked( 1 );
    my $checkBoxForceYes = Qt::CheckBox( $tab_Install );
    $self->{checkBoxForceYes} = $checkBoxForceYes;
    $checkBoxForceYes->setObjectName( "checkBoxForceYes" );
    $checkBoxForceYes->setGeometry( Qt::Rect(230, 170, 121, 20) );
    my $pushButtonInstallSelectPreseedFile = Qt::PushButton( $tab_Install );
    $self->{pushButtonInstallSelectPreseedFile} = $pushButtonInstallSelectPreseedFile;
    $pushButtonInstallSelectPreseedFile->setObjectName( "pushButtonInstallSelectPreseedFile" );
    $pushButtonInstallSelectPreseedFile->setEnabled( 0 );
    $pushButtonInstallSelectPreseedFile->setGeometry( Qt::Rect(20, 130, 191, 27) );
    my $lineEditInstallPreseedFile = Qt::LineEdit( $tab_Install );
    $self->{lineEditInstallPreseedFile} = $lineEditInstallPreseedFile;
    $lineEditInstallPreseedFile->setObjectName( "lineEditInstallPreseedFile" );
    $lineEditInstallPreseedFile->setEnabled( 0 );
    $lineEditInstallPreseedFile->setGeometry( Qt::Rect(20, 160, 191, 25) );
    my $label_6 = Qt::Label( $tab_Install );
    $self->{label_6} = $label_6;
    $label_6->setObjectName( "label_6" );
    $label_6->setGeometry( Qt::Rect(10, 10, 251, 16) );
    $tabWidget->addTab( $tab_Install, Qt::Application::translate( 'DebrootForm', "Install", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_Chroot = Qt::Widget(  );
    $self->{tab_Chroot} = $tab_Chroot;
    $tab_Chroot->setObjectName( "tab_Chroot" );
    my $pushButtonChrootShell = Qt::PushButton( $tab_Chroot );
    $self->{pushButtonChrootShell} = $pushButtonChrootShell;
    $pushButtonChrootShell->setObjectName( "pushButtonChrootShell" );
    $pushButtonChrootShell->setEnabled( 0 );
    $pushButtonChrootShell->setGeometry( Qt::Rect(200, 50, 92, 27) );
    my $pushButtonChrootRDP = Qt::PushButton( $tab_Chroot );
    $self->{pushButtonChrootRDP} = $pushButtonChrootRDP;
    $pushButtonChrootRDP->setObjectName( "pushButtonChrootRDP" );
    $pushButtonChrootRDP->setEnabled( 0 );
    $pushButtonChrootRDP->setGeometry( Qt::Rect(200, 90, 92, 27) );
    $tabWidget->addTab( $tab_Chroot, Qt::Application::translate( 'DebrootForm', "Chroot", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_Build = Qt::Widget(  );
    $self->{tab_Build} = $tab_Build;
    $tab_Build->setObjectName( "tab_Build" );
    my $checkBoxUEFI = Qt::CheckBox( $tab_Build );
    $self->{checkBoxUEFI} = $checkBoxUEFI;
    $checkBoxUEFI->setObjectName( "checkBoxUEFI" );
    $checkBoxUEFI->setEnabled( 0 );
    $checkBoxUEFI->setGeometry( Qt::Rect(60, 30, 131, 20) );
    my $checkBoxCustomInstaller = Qt::CheckBox( $tab_Build );
    $self->{checkBoxCustomInstaller} = $checkBoxCustomInstaller;
    $checkBoxCustomInstaller->setObjectName( "checkBoxCustomInstaller" );
    $checkBoxCustomInstaller->setEnabled( 0 );
    $checkBoxCustomInstaller->setGeometry( Qt::Rect(60, 50, 271, 20) );
    my $groupBox_4 = Qt::GroupBox( $tab_Build );
    $self->{groupBox_4} = $groupBox_4;
    $groupBox_4->setObjectName( "groupBox_4" );
    $groupBox_4->setGeometry( Qt::Rect(10, 80, 241, 101) );
    my $pushButtonPrepareLiveISO = Qt::PushButton( $groupBox_4 );
    $self->{pushButtonPrepareLiveISO} = $pushButtonPrepareLiveISO;
    $pushButtonPrepareLiveISO->setObjectName( "pushButtonPrepareLiveISO" );
    $pushButtonPrepareLiveISO->setEnabled( 0 );
    $pushButtonPrepareLiveISO->setGeometry( Qt::Rect(10, 20, 101, 71) );
    my $pushButtonBuildLiveISO = Qt::PushButton( $groupBox_4 );
    $self->{pushButtonBuildLiveISO} = $pushButtonBuildLiveISO;
    $pushButtonBuildLiveISO->setObjectName( "pushButtonBuildLiveISO" );
    $pushButtonBuildLiveISO->setEnabled( 0 );
    $pushButtonBuildLiveISO->setGeometry( Qt::Rect(120, 20, 111, 71) );
    my $groupBox_5 = Qt::GroupBox( $tab_Build );
    $self->{groupBox_5} = $groupBox_5;
    $groupBox_5->setObjectName( "groupBox_5" );
    $groupBox_5->setGeometry( Qt::Rect(260, 80, 131, 101) );
    my $pushButtonBuildUSBIMG = Qt::PushButton( $groupBox_5 );
    $self->{pushButtonBuildUSBIMG} = $pushButtonBuildUSBIMG;
    $pushButtonBuildUSBIMG->setObjectName( "pushButtonBuildUSBIMG" );
    $pushButtonBuildUSBIMG->setEnabled( 0 );
    $pushButtonBuildUSBIMG->setGeometry( Qt::Rect(10, 70, 111, 27) );
    my $lineEditBuildUSBUsername = Qt::LineEdit( $groupBox_5 );
    $self->{lineEditBuildUSBUsername} = $lineEditBuildUSBUsername;
    $lineEditBuildUSBUsername->setObjectName( "lineEditBuildUSBUsername" );
    $lineEditBuildUSBUsername->setEnabled( 0 );
    $lineEditBuildUSBUsername->setGeometry( Qt::Rect(10, 40, 113, 25) );
    my $label_5 = Qt::Label( $groupBox_5 );
    $self->{label_5} = $label_5;
    $label_5->setObjectName( "label_5" );
    $label_5->setGeometry( Qt::Rect(10, 20, 81, 16) );
    my $groupBox_6 = Qt::GroupBox( $tab_Build );
    $self->{groupBox_6} = $groupBox_6;
    $groupBox_6->setObjectName( "groupBox_6" );
    $groupBox_6->setGeometry( Qt::Rect(410, 80, 111, 101) );
    my $pushButtonBackupROOTFS = Qt::PushButton( $groupBox_6 );
    $self->{pushButtonBackupROOTFS} = $pushButtonBackupROOTFS;
    $pushButtonBackupROOTFS->setObjectName( "pushButtonBackupROOTFS" );
    $pushButtonBackupROOTFS->setEnabled( 0 );
    $pushButtonBackupROOTFS->setGeometry( Qt::Rect(10, 40, 92, 27) );
    $tabWidget->addTab( $tab_Build, Qt::Application::translate( 'DebrootForm', "Build", undef, Qt::Application::UnicodeUTF8() ) );
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
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_Unsquash}), Qt::Application::translate( 'DebrootForm', "Unsquash ISO", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonDebootstrap}->setText( Qt::Application::translate( 'DebrootForm', "debootstrap", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label_2}->setText( Qt::Application::translate( 'DebrootForm', "Mirror:", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{groupBox_3}->setTitle( Qt::Application::translate( 'DebrootForm', "Architecture", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxVariantMinBase}->setText( Qt::Application::translate( 'DebrootForm', "--variant=minbase", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label_3}->setText( Qt::Application::translate( 'DebrootForm', "Additional debootstrap options to be used:", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_Debbootstrap}), Qt::Application::translate( 'DebrootForm', "Debootstrap", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonRead}->setText( Qt::Application::translate( 'DebrootForm', "Read", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonSave}->setText( Qt::Application::translate( 'DebrootForm', "Save", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonSourcesHelp}->setText( Qt::Application::translate( 'DebrootForm', "Help", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonUpdate}->setText( Qt::Application::translate( 'DebrootForm', "Update", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonUpgrade}->setText( Qt::Application::translate( 'DebrootForm', "Upgrade", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonDistUpgrade}->setText( Qt::Application::translate( 'DebrootForm', "Dist-Upgrade", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label_7}->setText( Qt::Application::translate( 'DebrootForm', "sources.list", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label_8}->setText( Qt::Application::translate( 'DebrootForm', "APT", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_Upgrade}), Qt::Application::translate( 'DebrootForm', "sources.list/upgrade", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonInstallHelp}->setText( Qt::Application::translate( 'DebrootForm', "Help", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonInstall}->setText( Qt::Application::translate( 'DebrootForm', "Install", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxUnauthenticated}->setText( Qt::Application::translate( 'DebrootForm', "--allow-unauthenticated", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxRecommends}->setText( Qt::Application::translate( 'DebrootForm', "--no-install-recommends", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxForceYes}->setText( Qt::Application::translate( 'DebrootForm', "-y --force-yes", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonInstallSelectPreseedFile}->setText( Qt::Application::translate( 'DebrootForm', "Select preseed file", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label_6}->setText( Qt::Application::translate( 'DebrootForm', "Packages (space separated list):", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_Install}), Qt::Application::translate( 'DebrootForm', "Install", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonChrootShell}->setText( Qt::Application::translate( 'DebrootForm', "Chroot Shell", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonChrootRDP}->setText( Qt::Application::translate( 'DebrootForm', "Chroot RDP", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_Chroot}), Qt::Application::translate( 'DebrootForm', "Chroot", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxUEFI}->setText( Qt::Application::translate( 'DebrootForm', "UEFI enabled", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{checkBoxCustomInstaller}->setText( Qt::Application::translate( 'DebrootForm', "Add custom disk installer to image", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{groupBox_4}->setTitle( Qt::Application::translate( 'DebrootForm', "Live ISO", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonPrepareLiveISO}->setText( Qt::Application::translate( 'DebrootForm', "Prepare\n" .
"or update\n" .
" ISO content", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonBuildLiveISO}->setText( Qt::Application::translate( 'DebrootForm', "Build ISO", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{groupBox_5}->setTitle( Qt::Application::translate( 'DebrootForm', "USB image", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonBuildUSBIMG}->setText( Qt::Application::translate( 'DebrootForm', "Build USB IMG", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{lineEditBuildUSBUsername}->setText( '' );
    $self->{lineEditBuildUSBUsername}->setPlaceholderText( '' );
    $self->{label_5}->setText( Qt::Application::translate( 'DebrootForm', "Username:", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{groupBox_6}->setTitle( Qt::Application::translate( 'DebrootForm', "Chroot", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonBackupROOTFS}->setToolTip( Qt::Application::translate( 'DebrootForm', "Backup ROOTFS directory to a .tar.gz file for future use.", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonBackupROOTFS}->setText( Qt::Application::translate( 'DebrootForm', "Backup", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_Build}), Qt::Application::translate( 'DebrootForm', "Build", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label}->setText( Qt::Application::translate( 'DebrootForm', "ROOTFS Directory:", undef, Qt::Application::UnicodeUTF8() ) );
} # retranslateUi

sub retranslate_ui {
    my ( $debrootForm ) = @_;
    retranslateUi( $debrootForm );
}

1;