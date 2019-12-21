import QtQuick 2.9
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
import "../components"

Page {
    id: serverSettingsPage
    anchors.fill: parent

    header: PageHeader {
        title: i18n.tr('Server settings')

        trailingActionBar {
            actions: [
            Action {
                text: i18n.tr("Help")
                iconName: "help"
                onTriggered: {
                    mainStack.push(Qt.resolvedUrl("./Server_help.qml"))
                }
            }
            ]
        }
    }

    property var elemWidth: Math.min( serverSettingsPage.width - units.gu(4), units.gu(50))

    ScrollView {

        id: scrollView
        width: parent.width
        height: parent.height - header.height
        anchors.top: header.bottom
        contentItem: Column {
            width: serverSettingsPage.width
            spacing: units.gu(2)
            id: serverSettingsList

            TextField {
                anchors.horizontalCenter: parent.horizontalCenter
                id: websocketTextField
                placeholderText: i18n.tr("wss://example.com/ws/")
                //Keys.onReturnPressed: LoginPageActions.login()
                width: elemWidth
                //onDisplayTextChanged: LoginPageActions.updateHomeServerByTextField ( displayText )
            }

            TextField {
                anchors.horizontalCenter: parent.horizontalCenter
                id: boshTextField
                placeholderText: i18n.tr("https://example.com/bosh/")
                //Keys.onReturnPressed: LoginPageActions.login()
                width: elemWidth
                //onDisplayTextChanged: LoginPageActions.updateHomeServerByTextField ( displayText )
            }

            Button {
                id: saveButton
                text: i18n.tr("Save server settings")
                width: boshTextField.width
                color: UbuntuColors.green
                //onClicked: saveserver()
                enabled: websocketTextField.displayText !== "" || boshTextField.displayText !== ""
                anchors.horizontalCenter: parent.horizontalCenter
            }
          }
        }
}
