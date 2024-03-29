import QtQuick.Controls

// Slider with default range 0 to 100 and
// provide our standard tooltip and border
Slider {
    id: control
    objectName: "CustomSlider"
    from: 0
    to: 100
    value: 0
    stepSize: 1
    BorderTool {}
    GeometryToolTip{}
}

