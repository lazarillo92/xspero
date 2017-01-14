import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0

import QtQuick.Controls.Material 2.0

ApplicationWindow {
    //Screen.pixelDensity : real

    visible: true
    width: 800
    height: 480
    title: qsTr("XSpero Material Design")
    Material.theme: Material.Dark
    Material.accent: Material.color(Material.Blue)








    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
            x: 0
            y: 0
            Text {
                id: texto
                text: "cargando hora"
                anchors.centerIn: parent
                //color: w
                font.pixelSize: 30
            }
            Timer{
                id: timer1
                running: false
                repeat: true
                interval: 1000
                onTriggered: {
                    texto.text = obj.leerLaHora();
                    //obj.iniciarSerial;
                }
            }

            Component.onCompleted: {
                timer1.start();
            }

        }

        Page2 {
            id: pagina2
            Label {
                //text: qsTr("jujuju page")
                anchors.centerIn: parent
            }

        }
        Page3 {
            x: 0
            y: 0
            Label {
                //text: qsTr("jojojo page")
                anchors.centerIn: parent
            }

        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Iluminación")
        }
        TabButton {
            text: qsTr("Escenas")
        }
        TabButton {
            text: qsTr("Configuración")
        }
    }
}
