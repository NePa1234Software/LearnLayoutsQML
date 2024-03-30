import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Column
{
    Rectangle { color: "yellow"; width: 500; height: 8 }
    ParentRectangleWithColumnLayout {
        id: layout
        height: 300;
        width: sliderWidth.value
        spacing: sliderColumnSpacing.value
        CustomElideLabel { text: "ColumnLayout: use the toolip..."; Layout.fillWidth: true }
        CustomLabel { text: "spacing : " + layout.spacing; Layout.fillWidth: true }
        CustomElideLabel { text: "Just another label (no fill)"; Layout.fillWidth: false }
        CustomElideLabel { text: "Just another fill label"; Layout.fillWidth: true }
        CustomElideLabel { text: "Just another fill label (min 200)"; Layout.minimumWidth: 200; Layout.fillWidth: true }
        CustomElideLabel { text: "Just another fill label (max 300)"; Layout.maximumWidth: 300; Layout.fillWidth: true }
        CustomElideLabel { text: "Just another fill label (min 200, max 300)"; Layout.minimumWidth: 200; Layout.maximumWidth: 300;Layout.fillWidth: true }
        CustomElideLabel { text: "Just another fill label (margins %1)".arg(sliderColumnMargins.value); Layout.margins: sliderColumnMargins.value; Layout.fillWidth: true }
        CustomElideLabel { text: "Just another fill label (left margin %1)".arg(sliderColumnMargins.value); Layout.leftMargin: sliderColumnMargins.value; Layout.fillWidth: true }
    }
    Rectangle { color: "orange"; width: 500; height: 8 }
    CustomSlider{ id: sliderWidth; width: 500; from: 0; to: 500; value: 200 }
    CustomElideLabel { id: columnSpacing; text: "Column spacing"; }
    CustomSlider{ id: sliderColumnSpacing; width: 500; from: -250; to: 250; value: 0 }
    CustomElideLabel { id: columnMargins; text: "Column margins"; }
    CustomSlider{ id: sliderColumnMargins; width: 500; from: -250; to: 250; value: 10 }
}
