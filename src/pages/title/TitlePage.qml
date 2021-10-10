import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.15


Item {
    id: titlePage_qml

    width: Window.width
    height: Window.height


    Rectangle {
        id: pageBackground_qml

        anchors.fill: titlePage_qml

        color: '#000000'
    }


    Label {
        id: header_qml

        anchors.horizontalCenter: titlePage_qml.horizontalCenter

        y: (1/5) * titlePage_qml.height

        font.pointSize: (1/40) * titlePage_qml.width

        text: 'Star Trek Online Control System'

        color: '#ff0000'
    }


    Button {
        id: startButton_qml

        anchors.centerIn: titlePage_qml

        width: (1/10) * titlePage_qml.width
        height: (1/10) * titlePage_qml.height

        hoverEnabled: false

        onPressed: titlePage.onStartButtonPressed()

        background: Rectangle {
            radius: 2

            color: startButton_qml.down ? '#ffffff' : '#ff0000'
        }

        Text {
            anchors.centerIn: startButton_qml

            font.pointSize: (1/60) * titlePage_qml.width
            font.bold: true

            text: 'START'

            color: '#000000'
        }
    }
}
