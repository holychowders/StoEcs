import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.1


Window {
    id: main_window
    visible: true
    title: "Star Trek Online Control System"


    GridLayout {
        id: weapons_grid
        visible: true


        Rectangle {
            id: button_1
            visible: true

            width: 200
            height: 200

            color: "#000000"
        }


        Rectangle {
            id: button_2
            visible: true

            width: 200
            height: 200

            color: "#000000"
        }
    }
}
