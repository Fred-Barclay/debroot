###############################################################################
#
###############################################################################

#################################################################################
## Form generated from reading UI file 'debrootform.ui'
##
## Created: ter Jun 14 23:05:17 2016
##      by: Qt User Interface Compiler version 4.8.6
##
## WARNING! All changes made in this file will be lost when recompiling UI file!
################################################################################

package Ui_Form;

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

sub comboBox {
    return shift->{comboBox};
}

sub tabWidget {
    return shift->{tabWidget};
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

sub lineEditMirror {
    return shift->{lineEditMirror};
}

sub tab_2 {
    return shift->{tab_2};
}

sub tab_3 {
    return shift->{tab_3};
}

sub tab_4 {
    return shift->{tab_4};
}

sub label {
    return shift->{label};
}

sub lineEditDirectory {
    return shift->{lineEditDirectory};
}


sub setupUi {
    my ( $class, $form ) = @_;
    my $self = bless {}, $class;
    if ( !defined $form->objectName() ) {
        $form->setObjectName( "form" );
    }
    $form->resize( 400, 300 );
    my $groupBox = Qt::GroupBox( $form );
    $self->{groupBox} = $groupBox;
    $groupBox->setObjectName( "groupBox" );
    $groupBox->setGeometry( Qt::Rect(40, 30, 120, 80) );
    my $radioButtonDebian = Qt::RadioButton( $groupBox );
    $self->{radioButtonDebian} = $radioButtonDebian;
    $radioButtonDebian->setObjectName( "radioButtonDebian" );
    $radioButtonDebian->setGeometry( Qt::Rect(10, 20, 105, 20) );
    my $radioButtonUbuntu = Qt::RadioButton( $groupBox );
    $self->{radioButtonUbuntu} = $radioButtonUbuntu;
    $radioButtonUbuntu->setObjectName( "radioButtonUbuntu" );
    $radioButtonUbuntu->setGeometry( Qt::Rect(10, 50, 105, 20) );
    my $groupBox_2 = Qt::GroupBox( $form );
    $self->{groupBox_2} = $groupBox_2;
    $groupBox_2->setObjectName( "groupBox_2" );
    $groupBox_2->setGeometry( Qt::Rect(220, 30, 120, 101) );
    my $comboBox = Qt::ComboBox( $groupBox_2 );
    $self->{comboBox} = $comboBox;
    $comboBox->setObjectName( "comboBox" );
    $comboBox->setGeometry( Qt::Rect(10, 20, 101, 25) );
    my $tabWidget = Qt::TabWidget( $form );
    $self->{tabWidget} = $tabWidget;
    $tabWidget->setObjectName( "tabWidget" );
    $tabWidget->setGeometry( Qt::Rect(10, 140, 371, 151) );
    my $tab = Qt::Widget(  );
    $self->{tab} = $tab;
    $tab->setObjectName( "tab" );
    my $pushButtonDebootstrap = Qt::PushButton( $tab );
    $self->{pushButtonDebootstrap} = $pushButtonDebootstrap;
    $pushButtonDebootstrap->setObjectName( "pushButtonDebootstrap" );
    $pushButtonDebootstrap->setGeometry( Qt::Rect(260, 80, 92, 27) );
    my $label_2 = Qt::Label( $tab );
    $self->{label_2} = $label_2;
    $label_2->setObjectName( "label_2" );
    $label_2->setGeometry( Qt::Rect(10, 10, 41, 16) );
    my $lineEditMirror = Qt::LineEdit( $tab );
    $self->{lineEditMirror} = $lineEditMirror;
    $lineEditMirror->setObjectName( "lineEditMirror" );
    $lineEditMirror->setGeometry( Qt::Rect(10, 40, 341, 25) );
    $tabWidget->addTab( $tab, Qt::Application::translate( 'Form', "Debootstrap", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_2 = Qt::Widget(  );
    $self->{tab_2} = $tab_2;
    $tab_2->setObjectName( "tab_2" );
    $tabWidget->addTab( $tab_2, Qt::Application::translate( 'Form', "sources.list/upgrade", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_3 = Qt::Widget(  );
    $self->{tab_3} = $tab_3;
    $tab_3->setObjectName( "tab_3" );
    $tabWidget->addTab( $tab_3, Qt::Application::translate( 'Form', "Install", undef, Qt::Application::UnicodeUTF8() ) );
    my $tab_4 = Qt::Widget(  );
    $self->{tab_4} = $tab_4;
    $tab_4->setObjectName( "tab_4" );
    $tabWidget->addTab( $tab_4, Qt::Application::translate( 'Form', "Chroot", undef, Qt::Application::UnicodeUTF8() ) );
    my $label = Qt::Label( $form );
    $self->{label} = $label;
    $label->setObjectName( "label" );
    $label->setGeometry( Qt::Rect(20, 110, 61, 20) );
    my $lineEditDirectory = Qt::LineEdit( $form );
    $self->{lineEditDirectory} = $lineEditDirectory;
    $lineEditDirectory->setObjectName( "lineEditDirectory" );
    $lineEditDirectory->setGeometry( Qt::Rect(100, 110, 281, 25) );

    $self->retranslateUi( $form );

    $tabWidget->setCurrentIndex( 0 );


    Qt::MetaObject::connectSlotsByName( $form );
    return $self;
} # setupUi

sub setup_ui {
    my ( $form ) = @_;
    return setupUi( $form );
}

sub retranslateUi {
    my ( $self, $form ) = @_;
    $form->setWindowTitle( Qt::Application::translate( 'Form', "debroot", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{groupBox}->setTitle( Qt::Application::translate( 'Form', "Distribution", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{radioButtonDebian}->setText( Qt::Application::translate( 'Form', "Debian", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{radioButtonUbuntu}->setText( Qt::Application::translate( 'Form', "Ubuntu", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{groupBox_2}->setTitle( Qt::Application::translate( 'Form', "Release", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{pushButtonDebootstrap}->setText( Qt::Application::translate( 'Form', "debootstrap", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label_2}->setText( Qt::Application::translate( 'Form', "Mirror:", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab}), Qt::Application::translate( 'Form', "Debootstrap", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_2}), Qt::Application::translate( 'Form', "sources.list/upgrade", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_3}), Qt::Application::translate( 'Form', "Install", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{tabWidget}->setTabText( $self->{tabWidget}->indexOf( $self->{tab_4}), Qt::Application::translate( 'Form', "Chroot", undef, Qt::Application::UnicodeUTF8() ) );
    $self->{label}->setText( Qt::Application::translate( 'Form', "Directory:", undef, Qt::Application::UnicodeUTF8() ) );
} # retranslateUi

sub retranslate_ui {
    my ( $form ) = @_;
    retranslateUi( $form );
}

1;