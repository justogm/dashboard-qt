import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import "components"
import "resources/icons"

Window {
    id: window
    width: 1200
    height: 900
    visible: true
    color: "#00fff8f8"
    title: qsTr("Dashboard figma")

    Rectangle {
        id: fondo
        anchors.fill: parent
        color: "#1a202c"
    }

    Grid {
        columns: 2
        anchors.fill: window

        Column {
            id: columnNavbar
            width: window.width / 5
            height: window.height
            anchors.left: window.left
            Navbar {
                id: navbar
                widthNavBar: parent.width
            }
        }

        Column {
            id: columnContent
            width: window.width / 5 * 4
            Layout.preferredWidth: window.width / 5 * 4
            anchors.left: columnNavbar.right
            anchors.right: window.right
            Layout.fillWidth: true

            TopBar {
                id: topBar
                heightTopBar: window.height / 10
                Layout.fillWidth: true
                anchors.left: columnContent.left
                anchors.right: columnContent.right
            }

            Content {
                id: contenido
                contentHeight: window.height / 10 * 9
                contentWidth: parent.width - 60
                Layout.alignment: Qt.AlignVCenter                
            }

        }
    }

    Component.onCompleted: {
        console.log("Ancho de columnNavbar:", columnNavbar.width);
        console.log("columnNavbar.right:", columnNavbar.right);
        console.log("Ancho de columnContent:", columnContent.width);
        console.log("window.width - columnNavbar.width", window.width - columnNavbar.width);
    }
}
