import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import BMIClass 1.0

// setting the background
Window {
    width: 390
    height: 844
    visible: true
    title: qsTr("Hello World")

    // initialization of stackview and setting the initial item.
    StackView
    {
        id: stackView
        anchors.fill: parent
        initialItem: "qrc:/WelcomePage.qml"
    }
}
