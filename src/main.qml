import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import "pages/controlPanel/components/"


ApplicationWindow {
    id: applicationWindow
    visible: true

    title: 'Star Trek Online Control System'

    color: '#aaaaaa'

    width: Window.width
    height: Window.height


    TacticalComponent {
        visible: true

        // Note: Having a fixed height such as this means it will not scale when the app window is resized.
//        height: 200
    }
}
