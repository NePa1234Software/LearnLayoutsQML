import QtQuick
import QtQuick.Controls

// Add the hovered property to Label and
// provide the standard tooltip and border
CustomLabel {
    id: control
    objectName: "CustomElideLabel"
    elide: Text.ElideRight
}
