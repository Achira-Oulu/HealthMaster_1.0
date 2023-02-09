import QtQuick 2.15

//homepage of the application.
Item {
    // setting dimesntions of the phone screen
    width: 390
    height: 844

    // Tuning parameters for the scale and position of icons & text
    property real inconScaleFactor: 0.25
    property int leftMarginIcon: 45
    property int leftMarginText: 55
    property int topMarginText: 40
    property int topMarginIcon: 140

    // setting the background
    Rectangle
    {

        id: background
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

        Text {
            id: text1
            x: 38
            y: 27
            width: 314
            height: 48
            text: qsTr("Main Menu")
            font.pixelSize: 25
            font.italic: true
            font.bold: true
        }

        BottomDeck
        {
            id: bottomDeck
        }
    }


    Image
    {
        id: backButton2
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



    MenuIcon
    {

        id: runningIcon
        buttonImageSource: "qrc:/assets/run.png"
        //anchors.centerIn: parent
        anchors
        {
            top: background.top
            topMargin: topMarginIcon
            left: background.left
            leftMargin: leftMarginIcon


        }

        width: parent.width * inconScaleFactor

        MenuName
        {

            id: runningName
            anchors
            {
               top: runningIcon.top
               topMargin: 35
               left: runningIcon.right
               leftMargin: leftMarginText
               //verticallCenter: background.verticalCenter
            }

            width: parent.width * 01
            height: parent.height * 01
            font.pixelSize: 16
            font.bold: true
            text: qsTr("Running")

        }

        onButtonClicked: stackView.push("qrc:/RunningPage.qml")

    }

    MenuIcon
    {

        id: skippingIcon
        buttonImageSource: "qrc:/assets/skipping.png"
        anchors
        {
            top: runningIcon.bottom
            topMargin :20
            left: background.left
            leftMargin: leftMarginIcon

        }

        width: parent.width * inconScaleFactor

        MenuName
        {
            id: skippingName
            anchors
            {
                top: skippingIcon.top
                topMargin: topMarginText
                left: skippingIcon.right
                leftMargin: leftMarginText

            }

            width: parent.width * 01
            height: parent.height * 01
            color: "#ffa1a1"
            font.pixelSize: 16
            font.bold: true
            text: qsTr("Skipping")

        }
    }
    //setting menu icons and their texts
    MenuIcon
    {

        id: liftingIcon
        buttonImageSource: "qrc:/assets/lift.png"
        anchors
        {
            top: skippingIcon.bottom
            topMargin :20
            left: background.left
            leftMargin: leftMarginIcon
        }

        width: parent.width * inconScaleFactor

        MenuName
        {
            id: liftingName
            anchors
            {
                top: liftingIcon.top
                topMargin: topMarginText
                left: liftingIcon.right
                leftMargin: leftMarginText
            }

            width: parent.width * 01
            height: parent.height * 01
            color: "#e79d9d"
            font.pixelSize: 16
            font.bold: true
            text: qsTr("Lifting")

        }
    }

    MenuIcon
    {

        id: heartIcon
        buttonImageSource: "qrc:/assets/heart.png"
        anchors
        {
            top: liftingIcon.bottom
            topMargin :20
            left: background.left
            leftMargin: leftMarginIcon
           // horizontalCenter: parent.horizontalCenter
        }

        width: parent.width * inconScaleFactor

        MenuName
        {
            id: heartName
            anchors
            {
                top: heartIcon.top
                topMargin: topMarginText
                left: heartIcon.right
                leftMargin: leftMarginText
            }

            width: parent.width * 01
            height: parent.height * 01
            color: "#ea9f9f"
            font.pixelSize: 16
            font.bold: true
            text: qsTr("Heart Rate")

        }
    }

    MenuIcon
    {

        id: bmiIcon
        buttonImageSource: "qrc:/assets/bmi.png"
        anchors
        {
            top: heartIcon.bottom
            topMargin :20
            left: background.left
            leftMargin: leftMarginIcon
           // horizontalCenter: parent.horizontalCenter
        }

        width: parent.width * inconScaleFactor

        MenuName
        {
            id: bmiName
            anchors
            {
                top: bmiIcon.top
                topMargin: topMarginText
                left: bmiIcon.right
                leftMargin: leftMarginText
            }

            width: parent.width * 01
            height: parent.height * 01
            font.pixelSize: 16
            font.bold: true
            text: qsTr("Check BMI")

        }
        //Setting the stackview to be pushed on button press
        onButtonClicked: stackView.push("qrc:/BmiPage.qml")
    }

}
