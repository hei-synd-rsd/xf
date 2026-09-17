QT       += core

TARGET = test5
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
    ../src/app/statemachine05a.cpp \
    ../src/app/statemachine05b.cpp \
    ../src/app/testfactory05.cpp \
    ../src/events/evrestart.cpp

HEADERS += \
    ../src/app/statemachine05a.h \
    ../src/app/statemachine05b.h \
    ../src/app/testfactory05.h \
    ../src/events/eventids.h \
    ../src/events/evrestart.h
