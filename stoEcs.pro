QT += quick

CONFIG += c++11
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000


SOURCES += \
        src/main.cpp \
        src/pages/controlPanel/components/tactical.cpp \
        src/pages/title/title.cpp
HEADERS += \
        include/pages/title/title.h \
        include/pages/controlPanel/components/tactical.h
RESOURCES += qml.qrc


CONFIG(debug, debug|release) {
        TARGET = StoEcs
        OBJECTS_DIR = build/StoEcs/debug
        MOC_DIR = build/StoEcs/debug
}
CONFIG(release, debug|release) {
        TARGET = StoEcs
        OBJECTS_DIR = build/StoEcs/release
        MOC_DIR = build/StoEcs/release
}


qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
