import Quickshell
import Quickshell.Io
import Quickshell.Widgets
import Quickshell.Hyprland
import QtQuick

Scope {

    PanelWindow {

        color: "Transparent"

        anchors {
            left: true
            right: true
            top: true
        }

        margins {
            left: 10 
            right: 10
            top: 10
            bottom: -10
        }

        implicitHeight: 60

        //Account bar
        Rectangle {
            color: "#D0000000"
            anchors.left: parent
            height: parent.height
            implicitWidth: 400

            border.color: "#FFFFFF"
            border.width: 4
        }

    }
}
