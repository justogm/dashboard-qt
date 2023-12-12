import QtQuick 2.15
import QtQuick.Controls 2.15
import "./"

Rectangle   {
    id: rectangle2
    width: parent.width - 60
    height: parent.height - 60
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.rightMargin: 26
    anchors.leftMargin: 32
    property alias contentHeight: rectangle2.height
    property alias contentWidth: rectangle2.width
    color: "#364153"
    radius: 10
    TablaGastos {
        id: tablaGastos
    }
}
