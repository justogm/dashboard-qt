import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 715
    height: 55
    property alias text1Color: text1.color
    property alias text1Text: text1.text
    property alias text4Color: text4.color
    property alias text4Text: text4.text
    property alias text5Color: text5.color
    property alias text5Text: text5.text
    property alias rectangle3Color: rectangle3.color
    property alias text3Color: text3.color
    property alias text2Color: text2.color
    property alias text3Text: text3.text
    property alias rectangle1Color: rectangle1.color
    property alias text2Text: text2.text
    property alias imageSource: image.source

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: parent.width
        height: 55
        color: "#25395f"
        radius: 10
        Text {
            id: text1
            text: qsTr("#876368")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            font.pixelSize: 14
            anchors.leftMargin: 23
        }

        Text {
            id: text2
            x: 178
            text: qsTr("Horno")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: rectangle4.right
            font.pixelSize: 14
            anchors.leftMargin: 11
        }

        Text {
            id: text3
            x: 328
            text: qsTr("$730")
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: rectangle3.left
            font.pixelSize: 15
            anchors.rightMargin: 85
        }

        Text {
            id: text4
            text: qsTr("$2.190")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: rectangle3.right
            anchors.right: parent.right
            font.pixelSize: 15
            horizontalAlignment: Text.AlignRight
            anchors.rightMargin: 21
            anchors.leftMargin: 117
            font.weight: Font.Normal
        }

        Rectangle {
            id: rectangle3
            x: 461
            width: 67
            height: 33
            opacity: 0.8
            color: "#ffffff"
            radius: 10
            anchors.verticalCenter: parent.verticalCenter
            Text {
                id: text5
                text: qsTr("3")
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle {
            id: rectangle4
            width: 34
            height: 34
            opacity: 0.5
            color: "#ffffff"
            radius: 6
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: text1.right
            anchors.leftMargin: 50
            Image {
                id: image
                width: 34
                height: 34
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/qtquickplugin/images/template_image.png"
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit
            }
        }
    }
}