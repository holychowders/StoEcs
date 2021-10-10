import QtQuick.Controls 2.15
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.1


Item {
    id: tacticalComponent_qml

    width: Window.width
    height: Window.height


    Rectangle {
        id: componentBackground_qml

        anchors.fill: tacticalComponent_qml

        color: '#000000'
    }


    Row {
        id: weaponsControl_qml

        anchors.centerIn: tacticalComponent_qml
        //        spacing: 20


        Button {
            id: fireButton_qml

            width: (1/10) * Window.width
            height: (1/10) * Window.height

            hoverEnabled: false

            onPressed: tacticalComponent.onFireButtonPressed()

            background: Rectangle {
                radius: 2

                color: fireButton_qml.down ? '#ffffff' : '#ff0000'
            }

            Text {
                anchors.centerIn: fireButton_qml

                font.pointSize: (1/60) * Window.width
                font.bold: true

                text: 'FIRE'
            }
        }
    }
}

