import QtQuick 2.9
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

import "../components"

Page {
    id: landingPage
    anchors.fill: parent

    function search ()  {

		var searchTerm = customInstanceInput.displayText.toLowerCase();
		var absolutepath = "file:///opt/click.ubuntu.com/conversejs.povoq/current/www/index.html";
		//If  the  search starts with https then go to the url
		if(searchTerm.indexOf("http") == 0 ) {
			appSettings.instance = absolutepath
			mainStack.push (Qt.resolvedUrl("./ConverseJSWebview.qml"))
			return
		}
    }

    header: PageHeader {
        id: header
        title: i18n.tr('Landing Page')
        StyleHints {
            foregroundColor: theme.palette.normal.backgroundText
            backgroundColor: theme.palette.normal.background
        }
        trailingActionBar {
            actions: [
            Action {
                text: i18n.tr("Info")
                iconName: "info"
                onTriggered: {
                    mainStack.push(Qt.resolvedUrl("./Information.qml"))
                }
            }
            ]
        }
    }

	Column {
		id: logoCloumn
		spacing:units.dp(1)
		anchors {
			top:header.bottom
			topMargin:units.gu(1)
		}
		width:parent.width
		

		Image {
			anchors.horizontalCenter: parent.horizontalCenter
			height: Math.min(_infoPage.width/3, _infoPage.height/3)
			width:height
			source:"../../assets/logo.svg"
			layer.enabled: true
			layer.effect: UbuntuShapeOverlay {
				relativeRadius: 0.5
			}
			layer.sourceRect : Qt.rect(2,2,width-4,height-4)
		}
		Label {
			width: parent.width
			font.pixelSize: units.gu(3)
			font.bold: true
			color: theme.palette.normal.backgroundText
			horizontalAlignment: Text.AlignHCenter
			text: i18n.tr("ConverseJS")
		}

	}

    TextField {
        id: customInstanceInput
        anchors.top: logoCloumn.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: height
        width: parent.width - height
        placeholderText: i18n.tr("Enter Http")
        Keys.onReturnPressed: search()
    }

    TextField {
        id: secondInput
        anchors.top: customInstanceInput.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: height
        width: parent.width - height
        placeholderText: i18n.tr("Doesn't work")
        Keys.onReturnPressed: search()
    }
}
