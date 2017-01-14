import QtQuick 2.7

Page1Form {
    //id: window

    width: 800
    switch1.onClicked: {
        serialito.azulRGB()
}
    switch2.onClicked: {
        serialito.rojoRGB()
}
    switch3.onClicked: {
        //obj.colorRGB();
        serialito.iniciarSerial()

}

    button1.onClicked: {
        console.log("Button Pressed. Entered text: " + textField1.text);
    }
}
