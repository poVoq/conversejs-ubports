import QtQuick 2.9
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

import "../components"

Page {
    id: landingPage
    anchors.fill: parent

    function launch ()  {

		var absolutepath = "file:///opt/click.ubuntu.com/conversejs.povoq/current/www/index.html";
		//If  the  search starts with https then go to the url
		if(passwordTextField.displayText !== "" ) {
			appSettings.instance = absolutepath
			mainStack.push (Qt.resolvedUrl("./ConverseJSWebview.qml"))
			return
		}
    }

    header: PageHeader {
        id: header
        title: i18n.tr('XMPP Login')
        StyleHints {
            foregroundColor: theme.palette.normal.backgroundText
            backgroundColor: theme.palette.normal.background
        }

        leadingActionBar {
            numberOfSlots: 1
            actions: [

            Action {
                iconName: "sync-idle"
                text: i18n.tr("Change server")
                onTriggered: mainStack.push ( Qt.resolvedUrl("./Server_settings.qml") )
            },
            Action {
                iconName: "settings"
                text: i18n.tr("Change settings")
                onTriggered: mainStack.push ( Qt.resolvedUrl("./Client_settings.qml") )
            },
            Action {
                iconName: "info"
                text: i18n.tr("About ConverseJS")
                onTriggered: mainStack.push ( Qt.resolvedUrl("./Information.qml") )
            },
            Action {
                iconName: "private-browsing"
                text: i18n.tr("Privacy Policy")
                onTriggered: mainStack.push ( Qt.resolvedUrl("./PrivacyPolicyPage.qml") )
            }
            ]
        }

        trailingActionBar {
            actions: [
            Action {
                text: i18n.tr("Help")
                iconName: "help"
                onTriggered: {
                    mainStack.push(Qt.resolvedUrl("./General_help.qml"))
                }
            }
            ]
        }
    }

    property var elemWidth: Math.min( landingPage.width - units.gu(4), units.gu(50))

    ScrollView {
        id: scrollView
        width: landingPage.width
        height: parent.height - header.height
        flickableItem.contentY: flickableItem.contentHeight - height
        anchors.top: header.bottom
        contentItem: Column {
            width: landingPage.width
            spacing: units.gu(2)

            Icon {
                id: banner
                source: "../../assets/logo_text.svg"
                //color: mainLayout.mainColor
                width: height * 5/2
                height: Math.max( (landingPage.height - header.height)/2 - 4 * loginTextField.height - units.gu(4), (elemWidth+units.gu(4))*2/5 )
                anchors.horizontalCenter: parent.horizontalCenter
            }

            TextField {
                anchors.horizontalCenter: parent.horizontalCenter
                id: loginTextField
                placeholderText: i18n.tr("Username or Jabber ID")
                width: elemWidth
                onDisplayTextChanged: LoginPageActions.updateHomeServerByTextField ( displayText )
            }

            TextField {
                anchors.horizontalCenter: parent.horizontalCenter
                id: passwordTextField
                echoMode: TextInput.Password
                placeholderText: i18n.tr("Password")
                Keys.onReturnPressed: LoginPageActions.login()
                width: elemWidth
                onDisplayTextChanged: LoginPageActions.updateHomeServerByTextField ( displayText )
            }

            Rectangle {
                id: spacerRect
                width: parent.width
                color: theme.palette.normal.background
                height: Math.max(scrollView.height - banner.height - 2 * loginTextField.height - (newHere.visible * (newHere.height + units.gu(2))) - signInButton.height - units.gu(10), 0)
            }

            Row {
                id: newHere
                visible: passwordTextField.displayText !== ""
                opacity: 0
                width: passwordTextField.width
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: units.gu(1)
                states: State {
                    name: "visible"; when: newHere.visible
                    PropertyChanges {
                        target: newHere
                        opacity: 1
                    }
                }
                transitions: Transition {
                    NumberAnimation { property: "opacity"; duration: 300 }
                }
                CheckBox {
                    id: newHereCheckBox
                    checked: false
                    width: units.gu(2)
                    height: width
                }
                Label {
                    anchors.verticalCenter: parent.verticalCenter
                    text: i18n.tr("Keep me logged in")
                }
            }

            Button {
                id: signInButton
                text: newHereCheckBox.checked && newHereCheckBox.visible ? i18n.tr("Log in (stored)") : i18n.tr("Log in")
                width: passwordTextField.width
                color: UbuntuColors.green
                onClicked: launch()
                enabled: passwordTextField.displayText !== ""
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                width: parent.width
                color: theme.palette.normal.background
                height: 0.00001
            }

        }
    }
}
