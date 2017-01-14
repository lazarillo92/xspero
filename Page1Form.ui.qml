import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias textField1: textField1
    property alias button1: button1
    property alias switch1: switch1
    width: 800
    property alias switch3: switch3
    property alias switch2: switch2
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
        }

        Rectangle {
            id: rectangle3
            x: -7
            y: 81
            width: 160
            height: 394
            color: "#4b4b4b"
            z: -2
        }
    }

    RowLayout {
        width: 205
        height: 50
        z: 4
        anchors.horizontalCenterOffset: 79
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 24
        anchors.top: parent.top

        TextField {
            id: textField1
            placeholderText: qsTr("Text Field")
        }

        Button {
            id: button1
            text: qsTr("Press Me")
        }
    }








    Image {
        id: iconRGB
        x: 518
        y: 137

        Text {
            id: text4
            x: 103
            y: 6
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("RGB")
            font.pixelSize: 30
            z: 2
        }

        Rectangle {
            id: rectangle2
            x: 105
            y: 54
            width: 35
            height: 28
            color: "#ff0000"
            z: -2
        }

        RadioButton {
            id: radioButton3
            x: 155
            y: 48
            width: 110
            height: 49
            text: qsTr("Apagar")
        }
        source: "res/icon_rgb.png"
        z: 3
    }

    Image {
        id: iconfoco
        x: 224
        y: 137
        width: 54
        height: 73
        z: 2
        source: "res/foco.png"

        Text {
            id: text1
            x: -11
            y: 81
            width: 76
            height: 37
            color: "#ffffff"
            text: qsTr("Focos")
            z: 2
            font.pixelSize: 30
        }

        Switch {
            id: switch2
            x: 94
            y: 67
            text: qsTr("rojo")
            scale: 1.4
            antialiasing: false
        }

        Switch {
            id: switch1
            x: 98
            y: -13
            width: 132
            height: 65
            text: qsTr("azul")
            rotation: 0
            transformOrigin: Item.Center
            smooth: false
            scale: 1.4
            autoExclusive: false
            spacing: 8
            visible: true
            clip: false
            antialiasing: true
        }
    }















    Image {
        id: icondimmer
        x: 211
        y: 315
        z: 3
        source: "res/icon_dimerc.png"

        Slider {
            id: slider
            x: 0
            y: 53
            value: 0.5
        }

        Text {
            id: text3
            x: 57
            y: 3
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("Dimmer")
            font.pixelSize: 30
            z: 2
        }
    }



    Text {
        id: textoescenas
        x: 59
        y: 171
        width: 67
        height: 24
        color: "#ffaa00"
        text: qsTr("Escenas")
        z: 5
        font.pixelSize: 18

        RadioButton {
            id: radioButton
            x: -37
            y: 29
            width: 110
            height: 49
            text: qsTr("Clases")
        }

        RadioButton {
            id: radioButton1
            x: -37
            y: 78
            text: qsTr("Proyección")
        }

        RadioButton {
            id: radioButton2
            x: -38
            y: 124
            text: qsTr("Apagar Todo")
        }
    }


    ComboBox {
        id: comboBox
        x: 672
        y: 23
    }













    BusyIndicator {
        id: busyIndicator
        x: 587
        y: 18
    }




























    Image {
        id: iconfoco1
        x: 526
        y: 321
        Text {
            id: text2
            x: -20
            y: 43
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("Ecram")
            font.pixelSize: 30
            z: 2
        }

        Switch {
            id: switch3
            x: 102
            y: 14
            text: qsTr("iniciarSerial")
            antialiasing: false
        }
        source: "res/icon_cortina.png"
        z: 2
    }

}
