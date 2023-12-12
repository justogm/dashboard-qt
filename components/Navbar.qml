/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property alias widthNavBar: navBarComponent.width 
    id: navBarComponent
    width: parent.width
    height: parent.height

    Rectangle {
        id: navbar
        x: 0
        y: 0
        width: parent.width
        height: 1080
        color: "#364153"
        Text {
            id: estadisticastxt
            x: 61
            y: 200
            color: "#868d98"
            text: qsTr("Estadisticas")
            font.pixelSize: 16
            Image {
                id: chart
                x: -38
                y: -2
                width: 25
                source: "../resources/icons/Chart.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Text {
            id: dashboardtxt
            x: 61
            y: 144
            color: "#605cff"
            text: qsTr("Dashboard")
            font.pixelSize: 18
            Image {
                id: category
                x: -38
                y: 0
                width: 25
                height: 25
                source: "../resources/icons/Category.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Text {
            id: calendariotxt
            x: 61
            y: 253
            color: "#868d98"
            text: qsTr("Calendario")
            font.pixelSize: 16
            Image {
                id: calendar
                x: -39
                y: -2
                width: 25
                source: "../resources/icons/Calendar.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Text {
            id: configtxt
            x: 61
            y: 372
            color: "#868d98"
            text: qsTr("Configuracion")
            font.pixelSize: 16
            Image {
                id: setting
                x: -37
                y: -2
                width: 25
                source: "../resources/icons/Setting.png"
                fillMode: Image.PreserveAspectFit
                antialiasing: false
            }
            antialiasing: false
        }

        Text {
            id: notificacionestxt
            x: 61
            y: 316
            color: "#868d98"
            text: qsTr("Notificaciones")
            font.pixelSize: 16
            Image {
                id: notification
                x: -38
                y: -2
                width: 25
                source: "../resources/icons/Notification.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }
}