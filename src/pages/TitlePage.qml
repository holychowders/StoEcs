import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.15


Rectangle {
    id: titlePageContainer

    color: '#000000'

    width: Window.width
    height: Window.height


    Label {
        text: 'Star Trek Online Control System'
        id: header
        visible: true

        font.pointSize: (1/40) * titlePageContainer.width

        color: '#ff0000'

        y: (1/5) * titlePageContainer.height

        anchors.horizontalCenter: titlePageContainer.horizontalCenter
    }


    Button {
        id: startButton
        visible: true

        onPressed: titlePage.onStartButtonPressed()

        width: (1/10) * titlePageContainer.width
        height: (1/10) * titlePageContainer.height

        anchors.centerIn: titlePageContainer

        Text {
            text: 'START'

            font.bold: true
            font.pointSize: (1/60) * titlePageContainer.width

            color: '#000000'

            anchors.centerIn: startButton
        }

        background: Rectangle {
//            color: titlePageModel.startButtonColor
            color: startButton.down ? "#ffffff" : "#ff0000"

            implicitWidth: 100
            implicitHeight: 40

            border.width: 1
            radius: 2
        }
    }
}
