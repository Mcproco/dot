import Quickshell
import Quickshell.Io
import Quickshell.Widgets
import Quickshell.Hyprland
import Quickshell.Services.Notifications
import QtQuick
import QtQuick.Layouts

import "modules"
import "config.js" as Config

Scope {

    Notifications {}

    PanelWindow {

        color: "Transparent"

        anchors {
            left: true
            right: true
            bottom: true
        }

        margins {
        }

        implicitHeight: 27

        Rectangle {

            color: "#C0000000"
            anchors.left: parent
            height: parent.height
            width: parent.width

        }

        //Workspaces
        Row {

            height: parent.height
            width: parent.width
            leftPadding: 5

            Repeater {

                model: Hyprland.workspaces

                delegate: Rectangle {

                    required property var modelData
                    Text { 
                        text: modelData.id; 
                        anchors.centerIn: parent; 
                        color: modelData.focused ? "#FFFFFF" : "#AAAAAA" 
                        font.family: "JetBrainsMono Bold" 
                        font.pointSize: 10
                    }

                    width: 35 
                    height: parent.height
                    color: "#00FFFFFF"

                }
            }

        }

        //Center
        Rectangle {

            SystemClock {
                id: clock
                precision: SystemClock.Minutes
            }

            height: parent.height
            width: 250
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#00FFFFFF"
            Text {
                text: Qt.formatDateTime(clock.date, "[ h:mmAP dddd, MMM d yyyy ]")
                anchors.centerIn: parent
                color: "#FFFFFF"
                font.family: "JetBrainsMono Bold" 
                font.pointSize: 10
            }
        }

        Rectangle {

            Process {
                id: uptime
                command: ["uptime", "-p"]
                running: true
                stdout: StdioCollector {
                    onStreamFinished: uptimet.text = this.text
                }
            }

            Timer {
                interval: 60000
                running: true
                repeat: true
                onTriggered: uptime.running = true
            }

            height: parent.height
            width: 250
            anchors.right: parent.right
            color: "#00FFFFFF"
            Text {
                id: uptimet
                anchors.centerIn: parent
                color: "#FFFFFF"
                font.family: "JetBrainsMono Bold" 
                font.pointSize: 10
            }
        }

    }
}
