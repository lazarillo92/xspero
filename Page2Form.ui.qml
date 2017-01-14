import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    width: 800
    property alias comboBox: comboBox
    z: -1



    Image {
        id: xsperologo
        x: 8
        y: 8
        source: "res/logo.png"

        Rectangle {
            id: rectangle
            x: -7
            y: -8
            width: 800
            height: 94
            color: "#303030"
            z: -2
        }
        
        Rectangle {
            id: rectangle1
            x: -7
            y: 81
            width: 800
            height: 394
            color: "#4d4d4d"
            z: -2

            Rectangle {
                id: rectangle2
                x: 53
                y: 45
                width: 200
                height: 200
                color: "#ffaa00"
                
                Image {
                    id: image
                    x: 45
                    y: 50
                    width: 100
                    height: 100
                    source: "res/44224-200.png"
                }

                Text {
                    id: text1
                    x: 55
                    y: 163
                    width: 103
                    height: 37
                    text: qsTr("Clases")
                    font.bold: true
                    font.family: "Courier"
                    font.pixelSize: 25
                }
            }
            
            Rectangle {
                id: rectangle3
                x: 288
                y: 45
                width: 200
                height: 200
                color: "#aa0000"

                Image {
                    id: image2
                    x: 50
                    y: 55
                    width: 100
                    height: 100
                    source: "res/movie-projector-icon-63469.png"
                }

                Text {
                    id: text2
                    x: 27
                    y: 163
                    width: 103
                    height: 37
                    text: qsTr("Proyección")
                    font.family: "Courier"
                    font.pixelSize: 25
                    font.bold: true
                }
            }
            
            Rectangle {
                id: rectangle4
                x: 535
                y: 45
                width: 200
                height: 200
                color: "#55aa00"

                Image {
                    id: image3
                    x: 50
                    y: 50
                    width: 100
                    height: 100
                    source: "res/offmaterial.png"

                    Text {
                        id: text3
                        x: 0
                        y: 107
                        width: 103
                        height: 37
                        text: qsTr("Apagar")
                        font.family: "Courier"
                        font.pixelSize: 25
                        font.bold: true
                    }
                }
            }
        }
    }

























    ComboBox {
        id: comboBox
        x: 672
        y: 23
    }








































}
