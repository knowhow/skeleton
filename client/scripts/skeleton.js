// Get the icon
var icn = new QIcon();
icn.addDbImage('calculator');
 
var _btnCancel = mywindow.findChild("_btnCancel");
var _btnOk = mywindow.findChild("_btnOk");

var _lcd  = mywindow.findChild("_lcd");
var _lblGraphic = mywindow.findChild("_lblGraphic");

_lcd.value = 147;
_lblGraphic.toolTip = "evo ti jedan tooltip";
_lblGraphic.text = "Ja se zovem Ernad Husremović";

try {
    _lblGraphic.setPixmap(icn.pixmap);
    mainwindow.sReportError("setovao pixmap calculator image-a")
} catch (e) {
    print(e);
    mainwindow.sReportError("NISAM setovao pixmap calculator image-a")
}
// btn cancel will close the window
_btnCancel.clicked.connect(mywindow, "close");

_btnOk.clicked.connect(mywindow, "close");

