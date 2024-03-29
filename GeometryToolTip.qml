import QtQuick.Controls

ToolTip {
    id: control
    text: parent.contentWidth ?
          "%1:\nwidth x height = %2 x %3\nimplicit width x height = %4 x %5\ncontent width x height = %6 x %7"
            .arg(parent.objectName)
            .arg(parent.width)
            .arg(parent.height)
            .arg(parent.implicitWidth)
            .arg(parent.implicitHeight)
            .arg(parent.contentWidth)
            .arg(parent.contentHeight) :
          "%1:\nwidth x height = %2 x %3\nimplicit width x height = %4 x %5"
            .arg(parent.objectName)
            .arg(parent.width)
            .arg(parent.height)
            .arg(parent.implicitWidth)
            .arg(parent.implicitHeight)
    delay: 500
    timeout: 10000
    visible: parent.hovered
}
