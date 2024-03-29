import QtQuick
import QtQuick.Controls

// Add the hovered property to Label and
// provide the standard tooltip and border
// warning property to color text red
Label {
    id: control
    readonly property bool hovered: mouseArea.hovered
    property bool warning: false
    objectName: "CustomLabel"
    color: warning ? "red":"black"
    GeometryToolTip{}
    BorderTool {}
    HoverHandler {
        id: mouseArea
        cursorShape: Qt.PointingHandCursor
    }
}
