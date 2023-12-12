from PySide6.QtGui import QGuiApplication, QImage, QIcon
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtQuick import QQuickImageProvider
from PySide6.QtCore import QObject, Signal, Slot, QSize, Qt
from pathlib import Path
import pandas as pd
import sys
import os

class Backend(QObject):
    customSignal = Signal(str)

    def __init__(self):
        super().__init__()

        self.tabla = pd.DataFrame({
            "ID": [876364, 876268, 876412, 876621],
            "Dispositivo": ["Computadora","Horno", "Pava", "Luz"],
            "Gasto": [500, 730, 352, 183],
            "Hora": [4, 3, 1, 18],
            "Total": [2000, 2190, 352, 3294]
        })

    @Slot(str)
    def onButtonClicked(self, index):
        print(f"Boton {index} clickeado")
        self.ordenarDataFrame(index)

    def ordenarDataFrame(self, index):
        self.tabla = self.tabla.sort_values(by=index)
        # print(self.tabla.to_markdown())
        print(self.tabla.to_json(orient='split', index=False))

    @Slot(result=str)
    def getDataFrameAsJson(self):
        if self.tabla is not None:
            return self.tabla.to_json(orient='split', index=False)
        else:
            return ""



if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    backend = Backend()
    engine.rootContext().setContextProperty("backend", backend)

    print(engine.importPathList())
    qml_file = os.fspath(Path(__file__).resolve().parent / "main.qml")

    engine.load(qml_file)

    item_gasto_object = engine.rootObjects()[0].findChild(QObject, "contenido")
    print(item_gasto_object)

    sys.exit(app.exec( ))