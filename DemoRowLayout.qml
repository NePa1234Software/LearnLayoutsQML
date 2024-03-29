import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item
{
    id: control

    // width and height are explicitly set
    Column
    {
        Rectangle { color: "yellow"; width: 500; height: 8 }
        ParentRectangleWithColumnLayout {
            id: layout
            height: 500;
            width: sliderWidth.value
            spacing: sliderColumnSpacing.value

            CustomElideLabel { id: firstLabel;text: "Column minimum is content"; Layout.minimumWidth: contentWidth; Layout.preferredWidth: 300; Layout.fillWidth: true;
                               warning: width === contentWidth }
            // uncomment out this and the effect is that all column layout children are limited to this content width
            // CustomElideLabel { text: "############### This is a very long text (not layouted) ##############"; Layout.fillWidth: false }
            CustomElideLabel { text: "############### This is a very long elided layouted text ##############"; Layout.fillWidth: true }
            CustomElideLabel { text: "############### This is a very long elided layouted min 100 text ##############"; Layout.fillWidth: true; Layout.minimumWidth: 100 }
            RowLayout {
                id: layout1
                objectName: "layout1"
                Layout.fillWidth: true
                spacing: spacingSlider.value
                CustomElideLabel { text: "Default (%1)".arg(layout1.width); Layout.fillWidth: true }
                CustomElideLabel { text: "spacing: " + layout1.spacing; Layout.fillWidth: true }
                CustomElideLabel { text: "end"; Layout.fillWidth: true }
            }
            RowLayout {
                id: layout2
                objectName: "layout2"
                Layout.fillWidth: true
                spacing: spacingSlider.value
                CustomElideLabel { text: "Prefered 200 (%1)".arg(layout2.width); Layout.preferredWidth: 200; Layout.fillWidth: true }
                CustomElideLabel { text: "spacing: " + layout2.spacing; Layout.fillWidth: true }
                CustomElideLabel { text: "end"; Layout.fillWidth: true }
            }
            RowLayout {
                id: layout3
                objectName: "layout3"
                Layout.fillWidth: true
                spacing: spacingSlider.value
                CustomElideLabel { text: "Mix (%1)".arg(layout3.width); Layout.fillWidth: false }
                CustomElideLabel { text: "spacing: " + layout3.spacing; Layout.fillWidth: true }
                CustomElideLabel { text: "end"; Layout.fillWidth: false }
            }
            RowLayout {
                id: layout4
                objectName: "layout4"
                Layout.fillWidth: true
                spacing: spacingSlider.value
                CustomElideLabel { text: "Max 200 Min 100 (%1)".arg(layout4.width); Layout.minimumWidth: 100; Layout.maximumWidth: 200; Layout.fillWidth: true }
                CustomElideLabel { text: "spacing: " + layout4.spacing; Layout.fillWidth: true }
                CustomElideLabel { text: "end"; Layout.fillWidth: true}
            }
            RowLayout {
                id: layout5
                objectName: "layout5"
                Layout.fillWidth: true
                spacing: spacingSlider.value
                CustomElideLabel { text: "Min 100 (%1)".arg(layout5.width); Layout.minimumWidth: 100; Layout.fillWidth: true }
                CustomElideLabel { text: "spacing: " + layout5.spacing; Layout.fillWidth: true }
                CustomElideLabel { text: "end"; Layout.fillWidth: true}
            }
        }
        Rectangle { color: "orange"; width: 500; height: 8 }
        CustomSlider{ id: sliderWidth; width: 500; from: 0; to: 500; value: 200 }
        CustomElideLabel { id: columnSpacing; text: "Column spacing"; }
        CustomSlider{ id: sliderColumnSpacing; width: 500; from: -250; to: 250; value: 0 }
        Rectangle { color: "pink"; width: 500; height: 8 }
        CustomElideLabel { text: "Row spacing"; }
        CustomSlider { id: spacingSlider; width: 500; from: -250; to: 250; value: 0 }
    }
}
