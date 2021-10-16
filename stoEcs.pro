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


qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
