import QtQml
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 500
    height: 900
    visible: true
    title: "Learning Layouts (width=%1, height=%2)".arg(width).arg(height)

    ColumnLayout {
        anchors.fill: parent
        TabBar {
            id: viewBar
            Layout.fillWidth: true
            CustomTabButton { text: qsTr("StackLayout") }
            CustomTabButton { text: qsTr("StackView") }
        }

        DemoStackLayout {
            id: stackLayout
            visible: viewBar.currentIndex === 0
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        StackView {
            id: stackView
            visible: viewBar.currentIndex === 1
            Layout.fillWidth: true
            Layout.fillHeight: true
            initialItem: mainView
        }

        Component {
            id: mainView
            Row {
                spacing: 10

                Button {
                    text: "Push"
                    onClicked: stackView.push(mainView)
                }
                Button {
                    text: "Pop"
                    enabled: stackView.depth > 1
                    onClicked: stackView.pop()
                }
                Text {
                    text: stackView.depth
                }
            }
        }

    }
}
