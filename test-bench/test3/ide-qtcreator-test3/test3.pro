QT       += core

TARGET = test3
TEMPLATE = app
CONFIG -= app_bundle
CONFIG += c++14
CONFIG += cmdline

win32-msvc* {
# Do not optimize method pointers (MSVC compiler)
# See: https://stackoverflow.com/questions/13875786/pointers-to-members-representations
QMAKE_CXXFLAGS += /vmg
}

DEFINES += TC_QTCREATOR
DEFINES += TRACE_ENABLE_TIMESTAMP

DEFINES += XF_PORT_QT

XF_PATH = ../../../src/xf

DEPENDPATH += . \

INCLUDEPATH += . \
    .. \
    ../src \
    $${XF_PATH}/include \
    ../../../src/mdw \
    ../../../src/platform/qt

include(common.pri)
include($${XF_PATH}/xf-core.pri)
include($${XF_PATH}/port/qt/xf-port-qt.pri)
include(../../../src/platform/qt/platform-qt.pri)

SOURCES += \
    ../src/main.cpp  \
    ../src/app/statemachine03.cpp \
    ../src/app/testfactory03.cpp \
    ../src/events/evrestart.cpp

HEADERS += \
    ../src/app/statemachine03.h \
    ../src/app/testfactory03.h \
    ../src/events/eventids.h \
    ../src/events/evrestart.h
