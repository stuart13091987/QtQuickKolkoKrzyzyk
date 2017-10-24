import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

//T1T2

ApplicationWindow {
    visible: true
    width: 420
    height: 520
    property alias mouseArea: mouseArea
    title: qsTr("KolkoKrzyzyk")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Connections {
            target: manager
            onSendToQml: {
                Item.aString = playerStr
                console.log("Received in QML from C++: " + playerStr)
                console.log("Manager.playerStr " + manager.playerStr)
            }
        }

        Page {
            id:page1

            Grid {
                id: grid
                x: 50
                y: 50
                width: 300
                height: 300
                rows: 3
                columns: 3

                Rectangle {
                    id: rectangle
                    width: 100
                    height: 100
                    color: "#8ae234"
                    border.color: "black"
                    border.width: 5

                    MouseArea {
                        id: mouseArea
                        width: 100
                        height: 100
                        onClicked: {
                            manager.receiveFromQml(0);
                            rectangle.color="blue"
                            image1.source = manager.playerStr
                        }
                    }

                    Image{
                        id: image1
                        width: 90
                        height: 90
                    }
                }

                Rectangle {
                    id: rectangle1
                    width: 100
                    height: 100
                    color: "#8ae234"
                    border.color: "black"
                    border.width: 5

                    MouseArea {
                        id: mouseArea1
                        width: 100
                        height: 100
                        onClicked: {
                            manager.receiveFromQml(1);
                            rectangle1.color="blue"
                            image2.source = manager.playerStr
                        }
                    }

                    Image{
                        id: image2
                        width: 90
                        height: 90
                    }
                }

                Rectangle {
                    id: rectangle2
                    width: 100
                    height: 100
                    color: "#8ae234"
                    border.color: "black"
                    border.width: 5

                    MouseArea {
                        id: mouseArea2
                        width: 100
                        height: 100
                        onClicked: {
                            manager.receiveFromQml(2);
                            rectangle2.color="blue"
                            image3.source = manager.playerStr
                        }
                    }

                    Image{
                        id: image3
                        width: 90
                        height: 90
                    }
                }

                Rectangle {
                    id: rectangle3
                    x: 0
                    y: 200
                    width: 100
                    height: 100
                    color: "#8ae234"
                    border.color: "black"
                    border.width: 5

                    MouseArea {
                        id: mouseArea3
                        width: 100
                        height: 100
                        onClicked: {
                            manager.receiveFromQml(3);
                            rectangle3.color="blue"
                            image4.source = manager.playerStr
                        }
                    }

                    Image{
                        id: image4
                        width: 90
                        height: 90
                    }
                }

                Rectangle {
                    id: rectangle4
                    width: 100
                    height: 100
                    color: "#8ae234"
                    border.color: "black"
                    border.width: 5

                    MouseArea {
                        id: mouseArea4
                        width: 100
                        height: 100
                        onClicked: {
                            manager.receiveFromQml(4);
                            rectangle4.color="blue"
                            image5.source = manager.playerStr
                        }
                    }

                    Image{
                        id: image5
                        width: 90
                        height: 90
                    }
                }

                Rectangle {
                    id: rectangle5
                    width: 100
                    height: 100
                    color: "#8ae234"
                    border.color: "black"
                    border.width: 5

                    MouseArea {
                        id: mouseArea5
                        width: 100
                        height: 100
                        onClicked: {
                            manager.receiveFromQml(5);
                            rectangle5.color="blue"
                            image6.source = manager.playerStr
                        }
                    }

                    Image{
                        id: image6
                        width: 90
                        height: 90
                    }
                }

                Rectangle {
                    id: rectangle6
                    width: 100
                    height: 100
                    color: "#8ae234"
                    border.color: "black"
                    border.width: 5

                    MouseArea {
                        id: mouseArea6
                        width: 100
                        height: 100
                        onClicked: {
                            manager.receiveFromQml(6);
                            rectangle6.color="blue"
                            image7.source = manager.playerStr
                        }
                    }

                    Image{
                        id: image7
                        width: 90
                        height: 90
                    }
                }

                Rectangle {
                    id: rectangle7
                    width: 100
                    height: 100
                    color: "#8ae234"
                    border.color: "black"
                    border.width: 5

                    MouseArea {
                        id: mouseArea7
                        width: 100
                        height: 100
                        onClicked: {
                            manager.receiveFromQml(7);
                            rectangle7.color="blue"
                            image8.source = manager.playerStr
                        }
                    }

                    Image{
                        id: image8
                        width: 90
                        height: 90
                    }
                }

                Rectangle {
                    id: rectangle8
                    width: 100
                    height: 100
                    color: "#8ae234"
                    border.color: "black"
                    border.width: 5

                    MouseArea {
                        id: mouseArea8
                        width: 100
                        height: 100
                        onClicked: {
                            manager.receiveFromQml(8);
                            rectangle8.color="blue"
                            image9.source = manager.playerStr
                        }
                    }

                    Image{
                        id: image9
                        width: 90
                        height: 90
                    }
                }

            }
        }

        Page {

            id:page2

            Image {
                id: image10
                width: 640
                height: 480
                source: "bg.jpeg"
            }

            Label {
                y: 100
                width: 165
                height: 61
                text: qsTr("Hello Milo")
                color: "white"


                anchors.verticalCenterOffset: 56
                anchors.horizontalCenterOffset: 40
                anchors.centerIn: parent
            }

            Image {
                x: 100
                y: 50
                id: image
                width: 200
                height: 200
                source: "52330708_edit.jpg"
            }
        }

    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("TheGame")
        }
        TabButton {
            text: qsTr("About")
        }

    }
}
