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
            top: true
            bottom: true
        }

        margins {
            left: -4
            top: -4
            bottom: -4
        }

        implicitWidth: 75

        //For the background
        Rectangle {
            color: "#BB000000"
            anchors {fill: parent}
            border.color: "#AAFFFFFF"
            border.width: 4 
        }

        Rectangle {
            y: 20
            width: 70 
            height: 10
            color: "#00000000"
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                text: "@Mark"
                font.family: "JetBrainsMono"
                font.pointSize: 12
                color: "#E0FFFFFF"
                anchors.centerIn: parent
            }
        }

        Rectangle {

            y: 43
            width: 55
            height: 3
            color: "#40000000"
            anchors.horizontalCenter: parent.horizontalCenter

        }

        Column {

            width: parent.width
            topPadding: 55
            spacing: 5 


            Repeater {

                model: Hyprland.workspaces

                delegate: Rectangle {

                    required property var modelData
                    Text { 
                        text: modelData.id; 
                        anchors.centerIn: parent; 
                        color: modelData.focused ? "#000000" : "#FFFFFF" 
                        font.family: "JetBrainsMono" 
                        font.pointSize: 10
                    }

                    width: 55 
                    height: 35 
                    color: modelData.focused ? "#FFFFFF" : "#40000000"
                    anchors.horizontalCenter: parent.horizontalCenter

                }
            }

        }

    }
}
