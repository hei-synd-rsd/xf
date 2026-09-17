QT       += core

TARGET = test6
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
DEFINES += USE_LEDCONTROLLER=1
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
    ../src/main.cpp \
    ../src/app/blinky.cpp \
    ../src/app/statemachine06a.cpp \
    ../src/app/testfactory06.cpp \
    ../src/app/defaultdispatcherlauncher.cpp

HEADERS += \
    ../src/app/blinky.h \
    ../src/app/statemachine06a.h \
    ../src/app/testfactory06.h \
    ../src/app/defaultdispatcherlauncher.h
