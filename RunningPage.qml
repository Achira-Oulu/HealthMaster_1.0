import QtQuick 2.15
import Achira 1.0
import QtQuick.Controls 6.3

Item {
    // setting dimensions of the frame
    width: 390
    height: 844

        // initiating timer class
        TimerClass
        {
            id: timerClass
        }

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

            Text {
                id: text1
                x: 38
                y: 27
                width: 314
                height: 48
                text: qsTr("Running Menu")
                font.pixelSize: 25
                font.italic: true
                font.bold: true
            }


            Text {
                id: runningText
                x: 115
                y: 120
                width: 162
                height: 55
                text: qsTr("Running...")
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
                font.italic: true
                font.bold: true
            }

            Rectangle {
                id: rectangle
                radius: width/2
                border.color: "black"
                x: 95
                y: 174
                width: 200
                height: 200
                color: "#87888b"
            }
        }


        AnimatedImage
        {
            id: runningBoy
            source: "qrc:/assets/running2.gif"
            width: parent.width/2
            height: width
            anchors
            {
                top: parent.top
                topMargin: 178
                left: parent.left
                leftMargin: 98
            }

        }

        Button {
            id: button2
            x: 35
            y: 573
            width: 120
            height: 42
            text: qsTr("Resume Workout")

            // Calling the resume function on button click
            onClicked:
            {
                timerClass.resumeTimer();
                runningBoy.paused = false;
                runningText.text = qsTr("Running...")
            }
        }

        Button
        {
            id: button1
            x: 238
            y: 573
            width: 120
            height: 42
            text: qsTr("Pause Workout")

            // Calling the pause function on button click
            onClicked:
            {
                timerClass.pauseTimer();
                runningBoy.paused = true;
                runningText.text = qsTr("Paused");
            }

        }

        BottomDeck
        {
            id: bottomDeck
        }
        Image
        {
            id: backbutton
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

            Text
            {
                id: elapsedTime
                x: 32
                y: -386
                width: 291
                height: 104
                text:("Elapsed Time \n" + timerClass.timeDisplay)
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
                font.bold: true
                anchors
                {

                }

                font.pointSize: 25
            }

        }

}
