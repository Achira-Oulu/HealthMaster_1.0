import QtQuick 2.15
import QtQuick.Controls 6.3
import BMIClass 1.0

Item
{
    width: 390
    height: 844
    Rectangle
    {
        id: background

        BottomDeck
        {
            id: bottomDeck
        }

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
            text: qsTr("BMI Menu - Male")
            font.pixelSize: 25
            font.italic: true
            font.bold: true
        }

        TextField {
            id: textField
            x: 117
            y: 274
            width: 156
            height: 29
            horizontalAlignment: Text.AlignLeft
            font.italic: true
            font.pointSize: 10

            placeholderText: qsTr("E.g.: 1.75")
        }

        Text {
            id: text2
            x: 38
            y: 229
            width: 314
            height: 28
            text: qsTr("Enter your height in Meters")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        TextField {
            id: textField1
            x: 117
            y: 384
            width: 156
            height: 29
            opacity: 1
            text: ""
            horizontalAlignment: Text.AlignLeft
            font.bold: false
            font.italic: true
            focus: true
            antialiasing: true
            placeholderText: qsTr("E.g.: 75")
            font.pointSize: 10
        }

        Text {
            id: text3
            x: 38
            y: 332
            width: 314
            height: 28
            text: qsTr("Enter your weight in Kilograms")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }

        Button {
            id: button
            x: 121
            y: 462
            width: 149
            height: 57
            opacity: 0.9
            text: qsTr("Calculate BMI")
            highlighted: true
            topInset: 0
            padding: 4
            leftPadding: 4
            topPadding: 4
            font.italic: false
            font.bold: true
            font.family: "cali"
            wheelEnabled: false
            spacing: 3
            icon.width: 24
            icon.source: "assets/bmi.png"
            checkable: false

            // Calling the calculate BMI method based inpuuts of the text fields as parameters
            onClicked: bmiClass.calculateBmi(textField.text,textField1.text)

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

        // Creating an object from the BMI class
        BmiClass
        {
            id:bmiClass

            // displayig the value once the calculatedVal signal is emited
            onCalculatedVal: (data) => {
                                    label.text = "Your BMI is\t" + data
                             }
        }

        Label {
            id: label
            x: 38
            y: 548
            width: 314
            height: 63
            text: qsTr("Press 'Calculate BMI' to find your BMI")
            font.pointSize: 10
            font.bold: true
        }

        Image
        {
            id: maleIcon
            width: parent.width/4
            height: width
            source: "qrc:/assets/boy.png"
            anchors.horizontalCenterOffset: 0
            anchors.verticalCenterOffset: -263
            anchors.centerIn: parent

        }

        Text {
            id: text4
            x: 82
            y: 606
            width: 227
            height: 104
            text: qsTr
                  ("Below 18\t-\tUnderweight\n
18.5 to 24.9\t-\tHealthy Weight\n
25.0 to 29.9\t-\tOverweight\n
30.0 & Above\t-\tObesity")
        font.pixelSize: 12
        }


    }
}
