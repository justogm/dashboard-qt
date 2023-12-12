/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtCharts

Item {
    x: 0
    width: 841
    height: 353
    property alias rectangleColor: rectangle.color

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 841
        height: 353
        color: "#37336b"
        radius: 10

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("Costo")
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 16
            anchors.topMargin: 36
            anchors.leftMargin: 45
            font.bold: true
        }

        ChartView {
            id: pie
            x: 271
            y: 53
            width: 300
            height: 300
            PieSeries {
                name: ""
                PieSlice {
                    value: 13.5
                    label: "Electricidad"
                }

                PieSlice {
                    value: 10.9
                    label: "Gas"
                }

                PieSlice {
                    value: 8.6
                    label: "Otro"
                }
            }
        }
    }
}
