import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    property alias mouseArea: mouseArea
    title: qsTr("Hello World")


    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
            //var playerTurn = 0

            Grid {
                id: grid
                x: 160
                y: 109
                width: 300
                height: 300
                rows: 3
                columns: 3

                Rectangle {
                    id: rectangle
                    width: 100
                    height: 100
                    color: "#8ae234"

                    MouseArea {
                        id: mouseArea
                        width: 100
                        height: 100
                        onClicked: rectangle.color="blue"
                    }
                }

                Rectangle {
                    id: rectangle1
                    width: 100
                    height: 100
                    color: "#8ae234"

                    MouseArea {
                        id: mouseArea1
                        width: 100
                        height: 100
                        onClicked:
                        {
                            //playerTurn = playerTurn  + 1
                            //console.log("Turn", playerTurn)
                            rectangle1.color="blue"
                        }
                    }
                }

                Rectangle {
                    id: rectangle2
                    width: 100
                    height: 100
                    color: "#8ae234"

                    MouseArea {
                        id: mouseArea2
                        width: 100
                        height: 100
                        onClicked: rectangle2.color="blue"
                    }
                }

                Rectangle {
                    id: rectangle4
                    x: 0
                    y: 200
                    width: 100
                    height: 100
                    color: "#8ae234"

                    MouseArea {
                        id: mouseArea3
                        width: 100
                        height: 100
                        onClicked: rectangle4.color="blue"
                    }
                }

                Rectangle {
                    id: rectangle5
                    width: 100
                    height: 100
                    color: "#8ae234"

                    MouseArea {
                        id: mouseArea4
                        width: 100
                        height: 100
                        onClicked: rectangle5.color="blue"
                    }
                }

                Rectangle {
                    id: rectangle6
                    width: 100
                    height: 100
                    color: "#8ae234"

                    MouseArea {
                        id: mouseArea5
                        width: 100
                        height: 100
                        onClicked: rectangle6.color="blue"
                    }
                }

                Rectangle {
                    id: rectangle3
                    width: 100
                    height: 100
                    color: "#8ae234"

                    MouseArea {
                        id: mouseArea6
                        width: 100
                        height: 100
                        onClicked: rectangle3.color="blue"
                    }
                }

                Rectangle {
                    id: rectangle7
                    width: 100
                    height: 100
                    color: "#8ae234"

                    MouseArea {
                        id: mouseArea7
                        width: 100
                        height: 100
                        onClicked: rectangle7.color="blue"
                    }
                }

                Rectangle {
                    id: rectangle8
                    width: 100
                    height: 100
                    color: "#8ae234"

                    MouseArea {
                        id: mouseArea8
                        width: 100
                        height: 100
                        onClicked: rectangle8.color="blue"
                    }
                }

            }

        }

        Page {
            Label {
                width: 165
                height: 61
                text: qsTr("Hello Milo")
                anchors.verticalCenterOffset: 56
                anchors.horizontalCenterOffset: 40
                anchors.centerIn: parent
            }

            Image {
                id: image
                width: 100
                height: 100
                source: "52330708_edit.jpg"
            }
        }

        Item {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }

        TabButton {
            text: "Tab 2"
        }
    }
}
