import QtQuick 2.15
import QtQuick.Controls 2.15
import "./"

Item {
    id: item1
    width: parent.width
    height: 300
    anchors.verticalCenter: parent.verticalCenter
    anchors.left: parent.left
    anchors.leftMargin: 70
    
    Text {
        id: text1
        x: 8
        color: "#ffffff"
        text: qsTr("ID")
        anchors.top: parent.top
        anchors.bottom: itemGasto.top
        font.pixelSize: 16
        anchors.bottomMargin: 17
        anchors.topMargin: 23
    }
    
    ItemGasto {
        id: itemGasto
        y: 61
        anchors.left: parent.left
        anchors.bottom: itemGasto1.top
        anchors.leftMargin: 0
        anchors.bottomMargin: 6
        text5Color: "#514fd0"
        text4Color: "#ffffff"
        text3Color: "#ffffff"
        text2Color: "#ffffff"
        text1Color: "#ffffff"
        rectangle3Color: "#282c56"
        rectangle1Color: "#1a202c"
    }
    
    ItemGasto {
        id: itemGasto1
        y: 122
        anchors.left: parent.left
        anchors.bottom: itemGasto2.top
        anchors.leftMargin: 0
        anchors.bottomMargin: 7
        text5Text: "4"
        text4Text: "$2.000"
        text3Text: "$500"
        text2Text: "Computadora"
        text1Text: "#876364"
        text5Color: "#5a58e6"
        text4Color: "#ffffff"
        text3Color: "#ffffff"
        text2Color: "#ffffff"
        text1Color: "#ffffff"
        rectangle3Color: "#3e4675"
        rectangle1Color: "#364153"
    }
    
    ItemGasto {
        id: itemGasto2
        y: 184
        anchors.left: parent.left
        anchors.bottom: itemGasto3.top
        anchors.leftMargin: 0
        anchors.bottomMargin: 6

        text1Text: "#876621"
        text2Text: "Luz"
        text3Text: "$183"
        text5Text: "18"
        text4Text: "$3.294"
        text5Color: "#4847b4"
        text4Color: "#ffffff"
        text3Color: "#ffffff"
        text2Color: "#ffffff"
        text1Color: "#ffffff"
        rectangle3Color: "#282c56"
        rectangle1Color: "#1a202c"
    }
    
    ItemGasto {
        id: itemGasto3
        y: 245
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        rectangle3Color: "#3e4675"
        text4Text: "$352"
        text5Text: "1"
        text3Text: "$352"
        text2Text: "Pava"
        text1Text: "#876412"
        text5Color: "#5c59ee"
        text4Color: "#ffffff"
        text3Color: "#ffffff"
        text2Color: "#ffffff"
        text1Color: "#ffffff"
        rectangle1Color: "#364153"
    }

    Text {
        id: text2
        color: "#ffffff"
        text: qsTr("Dispositivo")
        anchors.left: text1.right
        anchors.top: parent.top
        anchors.bottom: itemGasto.top
        font.pixelSize: 16
        anchors.leftMargin: 98
        anchors.bottomMargin: 17
        anchors.topMargin: 23
    }

    BotonTriangular {
        id: botonDispositivos
        buttonId: "Dispositivo"
        onClickedHandler: botonDeOrdenado
        anchors.left: text2.right
        anchors.leftMargin: 90
        anchors.top: parent.top
        anchors.topMargin: 30
    }

    Text {
        id: text3
        color: "#ffffff"
        text: qsTr("Gasto")
        anchors.left: botonDispositivos.right
        anchors.top: parent.top
        anchors.bottom: itemGasto.top
        font.pixelSize: 16
        anchors.leftMargin: 26
        anchors.bottomMargin: 17
        anchors.topMargin: 23
    }

    BotonTriangular {
        id: botonGastos
        buttonId: "Gasto"
        onClickedHandler: botonDeOrdenado
        anchors.left: text3.right
        anchors.leftMargin: 59
        anchors.top: parent.top
        anchors.topMargin: 30
    }

    Text {
        id: text4
        color: "#ffffff"
        text: qsTr("Horas")
        anchors.left: botonGastos.right
        anchors.top: parent.top
        anchors.bottom: itemGasto.top
        font.pixelSize: 16
        anchors.leftMargin: 26
        anchors.bottomMargin: 17
        anchors.topMargin: 23
    }

    BotonTriangular {
        id: botonHoras
        buttonId: "Hora"
        onClickedHandler: botonDeOrdenado
        anchors.left: text4.right
        anchors.leftMargin: 107
        anchors.top: parent.top
        anchors.topMargin: 30
    }

    Text {
        id: text5
        color: "#ffffff"
        text: qsTr("Total")
        anchors.left: botonHoras.right
        anchors.top: parent.top
        anchors.bottom: itemGasto.top
        font.pixelSize: 16
        anchors.leftMargin: 20
        anchors.bottomMargin: 17
        anchors.topMargin: 23
    }

    BotonTriangular {
        id: botonTotal
        buttonId: "Total"
        onClickedHandler: botonDeOrdenado
        anchors.left: text5.right
        anchors.leftMargin: 15
        anchors.top: parent.top
        anchors.topMargin: 30
    }

    function botonDeOrdenado(index) {
        backend.onButtonClicked(index)
        var dataFrameJson = JSON.parse(obtenerDataFrameComoJson())
        var dataList = dataFrameJson.data

        var items = [itemGasto, itemGasto1, itemGasto2, itemGasto3]
        for (var i = 0 ; i < 4; i++) {
            actualizarItem(items[i], dataList[i])
        }
        
    }

    function obtenerDataFrameComoJson() {
        return backend.getDataFrameAsJson()
    }

    function actualizarItem(id, lista) {
        id.text1Text = "#" + lista[0].toString()
        id.text2Text = lista[1]
        id.text3Text = "$" + lista[2].toString()
        id.text5Text = lista[3].toString()
        id.text4Text = "$" + lista[4].toString()
    }
}
