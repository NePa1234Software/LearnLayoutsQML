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
            spacing: sliderSpacing.value

            CustomElideLabel {
                text: "Item 1 label with elided text";
                Layout.minimumWidth: sliderMinWidth.value
                Layout.maximumWidth: sliderMaxWidth.value
                Layout.preferredWidth: sliderPreferredWidth.value
                Layout.fillWidth: switchFillWidth.checked
                Layout.fillHeight: switchFillHeight.checked
            }
            CustomElideLabel {
                text: "Item 2 label with elided text";
                Layout.minimumWidth: slider2MinWidth.value
                Layout.maximumWidth: slider2MaxWidth.value
                Layout.preferredWidth: slider2PreferredWidth.value
                Layout.fillWidth: switch2FillWidth.checked
                Layout.fillHeight: switch2FillHeight.checked
            }
        }
        Rectangle { color: "orange"; width: 500; height: 8 }

        CustomElideLabel { text: "Layout width: " + sliderWidth.value }
        CustomSlider{ id: sliderWidth; width: 500; from: 0; to: 500; value: 200 }
        CustomElideLabel { text: "Layout spacing: " + sliderSpacing.value }
        CustomSlider{ id: sliderSpacing; width: 500; from: -250; to: 250; value: 0 }
        Rectangle { color: "pink"; width: 500; height: 8 }

        TabBar {
            id: barItems
            width: parent.widtch
            TabButton { text: "Item 1" }
            TabButton { text: "Item 2" }
        }

        StackLayout {
            currentIndex: barItems.currentIndex
            width: parent.width
            height: 500
            Item {
                id: item1
                Column
                {
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
            Item {
                id: item2
                Column {
                    CustomElideLabel { text: "Item 2 minimum width: " + slider2MinWidth.value }
                    CustomSlider{ id: slider2MinWidth; width: 500; from: -1; to: 500; value: -1 }
                    CustomElideLabel { text: "Item 2 prefered width: " + slider2PreferredWidth.value }
                    CustomSlider{ id: slider2PreferredWidth; width: 500; from: -1; to: 500; value: -1 }
                    CustomElideLabel { text: "Item 2 maximum width: " + slider2MaxWidth.value }
                    CustomSlider{ id: slider2MaxWidth; width: 500; from: -1; to: 500; value: -1 }
                    CustomElideLabel { text: "fillWidth 2: " + switch2FillWidth.checked }
                    CheckBox { id: switch2FillWidth; text: "fillWidth 2"; checkable: true; checked: false }
                    CustomElideLabel { text: "fillHeight 2: " + switch2FillHeight.checked }
                    CheckBox { id: switch2FillHeight; text: "fillHeight 2"; checkable: true; checked: false }
                }
            }
        }
    }
}
