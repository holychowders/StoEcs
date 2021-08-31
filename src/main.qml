import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.15


Window {
    id: titleWindow
    visible: true

    title: 'Star Trek Online Control System'

    color: 'black'

    width: Window.width
    height: Window.height


    Label {
        id: header
        visible: true

        text: 'Star Trek Online Control System'
        color: '#ff0000'
        font.pointSize: (1/40) * Window.width

        y: 20

        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
    }


    Button {
        id: startButton
        visible: true

        onPressed: titlePage.onStartButtonPressed()

        width: (1/10) * Window.width
        height: (1/10) * Window.height
        anchors.centerIn: parent

        Text {
            text: 'START'
            color: '#000000'
            font.pointSize: (1/80) * Window.width
            anchors.centerIn: parent
        }


        background: Rectangle {
//            color: titlePage.startButtonColor
            color: '#cc0000'

            radius: 5
            border.width: 3
        }
    }
}

