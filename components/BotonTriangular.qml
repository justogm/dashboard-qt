import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    width: 6
    height: 6

    // Opcional: Para ocultar el texto del botón
    contentItem: Text {
        text: ""
    }

    property var onClickedHandler: null
    property string buttonId: ""

    Canvas {
        id: canvas
        anchors.fill: parent

        onPaint: {
            var ctx = getContext("2d")

            ctx.fillStyle = "white" // Color del triángulo
            ctx.beginPath()
            ctx.moveTo(canvas.width / 2, canvas.height) 
            ctx.lineTo(0, 0) 
            ctx.lineTo(canvas.width, 0) 
            ctx.closePath()
            ctx.fill()
        }
    }

    onClicked: {
        if (onClickedHandler !== null) {
            onClickedHandler(buttonId)
        }
    }
    
}
