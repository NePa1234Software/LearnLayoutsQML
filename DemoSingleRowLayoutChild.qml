import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: control

    // width and height are explicitly set
    Column
    {
        Rectangle { color: "yellow"; width: 500; height: 8 }
        ParentRectangleWithRowLayout {
            id: layout
            height: 200;
            width: sliderWidth.value

            CustomElideLabel {
                text: "Item label with elided text";
                Layout.minimumWidth: sliderMinWidth.value
                Layout.maximumWidth: sliderMaxWidth.value
                Layout.preferredWidth: sliderPreferredWidth.value
                Layout.fillWidth: switchFillWidth.checked
                Layout.fillHeight: switchFillHeight.checked
            }
        }
        Rectangle { color: "orange"; width: 500; height: 8 }
        CustomElideLabel { text: "Layout width: " + sliderWidth.value }
        CustomSlider{ id: sliderWidth; width: 500; from: 0; to: 500; value: 200 }

        Rectangle { color: "pink"; width: 500; height: 8 }
        CustomElideLabel { text: "Item minimum width: " + sliderMinWidth.value }
        CustomSlider{ id: sliderMinWidth; width: 500; from: -1; to: 500; value: -1 }
        CustomElideLabel { text: "Item prefered width: " + sliderPreferredWidth.value }
        CustomSlider{ id: sliderPreferredWidth; width: 500; from: -1; to: 500; value: -1 }
        CustomElideLabel { text: "Item maximum width: " + sliderMaxWidth.value }
        CustomSlider{ id: sliderMaxWidth; width: 500; from: -1; to: 500; value: -1 }
        CustomElideLabel { text: "fillWidth: " + switchFillWidth.checked }
        CheckBox { id: switchFillWidth; text: "fillWidth"; checkable: true; checked: false }
        CustomElideLabel { text: "fillHeight: " + switchFillHeight.checked }
        CheckBox { id: switchFillHeight; text: "fillHeight"; checkable: true; checked: false }
    }
}
