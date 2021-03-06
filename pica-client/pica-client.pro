#-------------------------------------------------
#
# Project created by QtCreator 2011-10-22T02:19:02
#
#-------------------------------------------------

QT       += core gui sql network

TARGET = pica-client
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    chatwindow.cpp \
    contacts.cpp \
    ../PICA_client.c \
    ../PICA_msgproc.c \
    contactlistwidget.cpp \
    skynet.cpp \
    nodes.cpp \
    accountswindow.cpp \
    accounts.cpp \
    dialogs/addaccountdialog.cpp \
    nodethread.cpp \
    askpassword.cpp \
    msguirouter.cpp \
    picasystray.cpp \
    picaactioncenter.cpp \
    dialogs/viewcertdialog.cpp \
    dialogs/forgedcertdialog.cpp \
    dialogs/registeraccountdialog.cpp \
    openssltool.cpp

HEADERS  += mainwindow.h \
    chatwindow.h \
    contacts.h \
    globals.h \
    ../PICA_client.h \
    ../PICA_msgproc.h \
    contactlistwidget.h \
    skynet.h \
    nodes.h \
    accountswindow.h \
    accounts.h \
    dialogs/addaccountdialog.h \
    nodethread.h \
    askpassword.h \
    msguirouter.h \
    picasystray.h \
    picaactioncenter.h \
    dialogs/viewcertdialog.h \
    dialogs/forgedcertdialog.h \
    ../PICA_common.h \
    ../PICA_proto.h \
    dialogs/registeraccountdialog.h \
    openssltool.h


DEFINES = PICA_MULTITHREADED

FORMS    += mainwindow.ui



unix: CONFIG += link_pkgconfig
unix: PKGCONFIG += libssl

unix: CONFIG += link_pkgconfig
unix: PKGCONFIG += libcrypto




