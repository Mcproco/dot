import Quickshell
import Quickshell.Wayland
import Quickshell.Services.Notifications
import QtQuick
import QtQuick.Layouts

import "../config.js" as Config

Scope {
    id: root

    NotificationServer {
        id: server
        actionsSupported: true
        bodySupported: true
        imageSupported: true

        onNotification: n => {
            n.tracked = true
        }

    }

    PanelWindow {
        anchors { top: true; right: true }
        margins { top: 12; right: 12 }

        implicitWidth: 300
        implicitHeight: Math.max(1, column.implicitHeight)
        color: "transparent"

        exclusionMode: ExclusionMode.Ignore

        ColumnLayout {
            id: column
            width: parent.width
            spacing: 10

            Repeater {
                model: server.trackedNotifications
                delegate: Rectangle {
                    id: card
                    required property var modelData

                    Timer {
                        running: true
                        interval: Config.notifications.timeout
                        onTriggered: card.modelData.dismiss()

                    }

                    Layout.fillWidth: true
                    Layout.preferredHeight: Math.max(80, layout.implicitHeight) + (1.5 * layout.anchors.margins) 
                    radius: 0
                    color: Config.colors.background
                    border.width: 0

                    RowLayout {
                        id: layout
                        anchors.fill: parent
                        anchors.margins: 10
                        spacing: 10

                        Image {
                            Layout.preferredHeight: 36
                            Layout.preferredWidth: 36
                            Layout.alignment: Qt.AlignTop
                            fillMode: Image.PreserveAspectFit
                            visible: source.toString() !== ""
                            source: card.modelData.image || card.modelData.appIcon || ""
                        }

                        ColumnLayout {

                            Layout.fillWidth: true
                            spacing: 2

                            Text {
                                Layout.fillWidth: true
                                text: card.modelData.summary
                                color: Config.colors.foreground
                                font.family: Config.font.family
                                font.pixelSize: Config.font.size + 4
                                font.bold: true
                                elide: Text.ElideRight
                            }

                            Text {
                                Layout.maximumHeight: 80
                                Layout.fillWidth: true
                                visible: text !== ""
                                text: card.modelData.body
                                color: Config.colors.foreground
                                font.family: Config.font.family
                                font.pixelSize: Config.font.size - 2 
                                wrapMode: Text.WordWrap
                                elide: Text.ElideRight
                            }
                        }
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: card.modelData.dismiss()
                    }
                }
            }
        }

    }
}
