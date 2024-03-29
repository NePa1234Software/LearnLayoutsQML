import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

// Add the hovered property to Label and
// provide the standard tooltip and border
// warning property to color text red
Item {
    id: control
    objectName: "Parent container"

    readonly property bool hovered: mouseArea.hovered
    default property alias data: layoutContainer.data
    property alias spacing: layoutContainer.spacing

    // Width and Height as explicitly set

    BorderTool { color: "palegreen"; border.color: "red" }
    CustomElideLabel { id: label; text: "ColumnLayout"}
    GeometryToolTip {}
    HoverHandler { id: mouseArea; cursorShape: Qt.PointingHandCursor }

    // Here are the children
    ColumnLayout {
        id: layoutContainer
        anchors.fill: parent
        anchors.topMargin: label.contentHeight

        // Here are the children added as default property

    }
}
