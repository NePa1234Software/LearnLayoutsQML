import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ColumnLayout {
    id: layout
    spacing: spacingSlider.value

    // comment out this - the effect is the width is the minimum limit for all its children
    // CustomLabel { text: "ColumnLayout: use the toolip..." }
    CustomElideLabel { text: "ColumnLayout: use the toolip..."; Layout.fillWidth: true }
    CustomElideLabel { text: "spacing : " + layout.spacing; Layout.fillWidth: true }
    CustomSlider { id: spacingSlider; Layout.fillWidth: true }

    TabBar {
        id: tabBar
        Layout.fillWidth: true
        CustomTabButton { text: qsTr("RowLayout\nwith 1 Item") }
        CustomTabButton { text: qsTr("RowLayout\nwith 2 Items") }
        CustomTabButton { text: qsTr("RowLayout") }
        CustomTabButton { text: qsTr("ColumnLayout") }
        CustomTabButton { text: qsTr("GridLayout") }
    }

    StackLayout {
        id: stackLayout
        visible: viewBar.currentIndex == 0
        Layout.fillWidth: true
        Layout.fillHeight: true
        currentIndex: tabBar.currentIndex

        DemoSingleRowLayoutChild {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        DemoTwoRowLayoutChildren {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        DemoRowLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        DemoColumnLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        CustomLabel {
            id: gridTab
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: "TODO grid layouts"
        }
    }
}
