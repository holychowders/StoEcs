import QtQuick.Controls 2.15
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.1


Window {
    id: tacticalWindow
    visible: true
    title: "Star Trek Online Control System"


    Row {
        id: weaponsGrid
        visible: true

        spacing: 20
        anchors.centerIn: parent


        Button {
            id: fireButton
            text: "Fire"

            visible: true

            //width: 200
            //height: 200

            contentItem: Text {
                text: control.text
                font: control.font
                opacity: enabled ? 1.0 : 0.3
                color: control.down ? "#17a81a" : "#21be2b"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 40
                opacity: enabled ? 1 : 0.3
                border.color: control.down ? "#17a81a" : "#21be2b"
                border.width: 1
                radius: 2
            }
        }
    }
}