import QtQuick 2.15
import Achira 1.0
import QtQuick.Controls 6.3

// Initialization of thegender selection menu
Item {
    width: 390
    height: 844
    antialiasing: true
    smooth: true
    enabled: true

    Rectangle
        {
            id: background

            anchors.fill: parent
            gradient: Gradient
            {
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

            Text {
                id: text1
                x: 38
                y: 27
                width: 314
                height: 48
                text: qsTr("BMI Menu")
                font.pixelSize: 25
                font.italic: true
                font.bold: true
            }

            Text {
                id: text2
                x: 38
                y: 215
                width: 314
                height: 40
                text: qsTr("Select your gender")
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Button {
                id: button
                x: 74
                y: 318
                width: 242
                height: 39
                opacity: 0.9
                text: qsTr("Male")
                font.bold: true

                onClicked: stackView.push("qrc:/BmiCalcMale.qml")
            }

            Button {
                id: button1
                x: 74
                y: 403
                width: 242
                height: 39
                opacity: 0.9
                text: qsTr("Female")
                font.bold: true

                onClicked: stackView.push("qrc:/BmiCalcFemale.qml")
            }

            Button {
                id: button2
                x: 74
                y: 481
                width: 242
                height: 39
                opacity: 0.9
                text: qsTr("I'd rather not say")
                font.bold: true
            }
        }
        BottomDeck
        {
            id: bottomDeck
        }

        Image
        {
            id: backButton
            width: parent.width/10
            height: width
            source: "qrc:/assets/back.png"
            anchors
            {
                bottom: parent.bottom
                bottomMargin: 20
                left: parent.left
                leftMargin: 20
            }

            MouseArea
            {
                anchors.fill: parent
                onClicked: stackView.pop()
            }
        }

}
