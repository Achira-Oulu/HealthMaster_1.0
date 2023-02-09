import QtQuick 2.15
import QtQuick.Controls 6.3


// Initialization of the welcome page (Mostly done with design tool of the IDE
Item {
    // setting dimensions of the frame
    width: 390
    height: 844

    Rectangle
    {
        id: background
        width: 390
        height: 844
        anchors.fill: parent
        gradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop {
                position: 0
                color: "#55aa00"
            }

            GradientStop {
                position: 1
                color: "#264a02"
            }
        }


        Button {
            id: button
            x: 128
            y: 609
            width: 135
            height: 48
            text: qsTr("Get Started!")


            onClicked: stackView.push("qrc:/HomePage.qml")

        }

        Text {
            id: text1
            x: 105
            y: 90
            width: 180
            height: 50
            text: qsTr("Health Master")
            font.pixelSize: 30
            horizontalAlignment: Text.AlignHCenter
            style: Text.Normal
            font.underline: false
            font.strikeout: false
            font.family: "Tahoma"
            font.italic: false
            font.bold: true
        }

        Text {
            id: text2
            x: 91
            y: 134
            width: 152
            height: 53
            text: qsTr("Version 1.0")
            font.pixelSize: 20
            font.italic: true
        }

        Image
        {
            id: mainIcon
            width: parent.width/2
            height: width
            source: "qrc:/assets/welcomeheart.png"
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenterOffset: -74


            anchors.centerIn: parent

        }

        Text {
            id: text3
            x: 71
            y: 470
            width: 247
            height: 26
            text: qsTr("Be keen to live long!")
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.italic: true
        }


    }

}
