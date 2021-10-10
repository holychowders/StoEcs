import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import 'pages/title/'
import 'pages/controlPanel/components/'


ApplicationWindow {
    id: applicationWindow_qml

    width: Window.width
    height: Window.height

    visible: true
    visibility: Window.FullScreen

    title: 'Star Trek Online Control System'

    color: '#aaaaaa'


    TacticalComponent {
    }
}
