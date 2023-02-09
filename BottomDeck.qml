import QtQuick 2.15

// qml object for the bottom deck of the application
Rectangle
{
    id: bottomDeck
    anchors
    {
        left: parent.left
        right: parent.right
        bottom: parent.bottom
    }
    height: parent.height / 11
    radius: 10
    color: "#999999"
    border.color: "#af0a0d0a"
}
