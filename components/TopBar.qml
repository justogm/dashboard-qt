import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

RowLayout {
        property alias heightTopBar: mainRow.height
        id: mainRow
        width: parent.width
        Layout.fillWidth: true

        Text {
            text: "Dashboard"
            color: "#ffffff"
            font.pixelSize: 30
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            Layout.margins: 30
        }

        ComboBox {
            // Configura tu ComboBox según tus necesidades
            width: 150
            model: ["03/10/2023", "02/10/2023", "01/10/2023"]
            flat: true
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.margins: 30
        }
}