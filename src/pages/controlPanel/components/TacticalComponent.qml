import QtQuick.Controls 2.15
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.1


Rectangle {
    id: tacticalComponentContainer

    color: '#000000'

    width: Window.width
    height: Window.height


    Row {
        id: weaponsGrid
        visible: true

//        spacing: 20
        anchors.centerIn: parent


        Button {
            id: fireButton
            visible: true

            width: (1/10) * tacticalComponentContainer.width
            height: (1/10) * tacticalComponentContainer.height

            contentItem: Text {
                text: 'FIRE'

                font.bold: true
                font.pointSize: (1/60) * tacticalComponentContainer.width

                color: '#000000'

                // Why can't I do anchors.centerIn: fireButton
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            background: Rectangle {
                color: fireButton.down ? "#ffffff" : "#ff0000"

                implicitWidth: 100
                implicitHeight: 40

                border.width: 1
                radius: 2
            }
        }
    }
}
