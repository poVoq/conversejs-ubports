import QtQuick 2.9
import Ubuntu.Components 1.3

Page {
	id:_infoPage
	header: PageHeader {
		id:infoHeader
		title: i18n.tr("About")

	}

	ListModel {
	id: infoModel
	}

	Component.onCompleted: {
		infoModel.append({ name: i18n.tr("About ConverseJS"), url: "https://conversejs.org/" ,icon:"info"})
		infoModel.append({ name: i18n.tr("Get the source"), url: "https://github.com/poVoq/conversejs-ubports" ,icon:"text-css-symbolic"})
		infoModel.append({ name: i18n.tr("Report issues"), url: "https://github.com/poVoq/conversejs-ubports/issues",icon:"dialog-warning-symbolic" })
		infoModel.append({ name: i18n.tr("GNU General Public License v3.0"), url: "https://github.com/poVoq/conversejs-ubports/blob/master/LICENSE",icon:"note" })
		infoModel.append({ name: i18n.tr("Contributors"), url: "https://github.com/povoq/conversejs-ubports/graphs/contributors" ,icon:"contact-group"})
		infoModel.append({ name: i18n.tr("Donate to ConverseJS"), url: "https://conversejs.org/#sponsors" ,icon:"like", iconColor: UbuntuColors.red})
	}

	Column {
		id: aboutCloumn
		spacing:units.dp(1)
		anchors {
			top:infoHeader.bottom
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

	ListView {
		anchors {
			top: aboutCloumn.bottom
			bottom: parent.bottom
			left: parent.left
			right: parent.right
			topMargin: units.gu(2)
		}

		currentIndex: -1
		interactive: true
		 flickableDirection: Flickable.VerticalFlick

		model :infoModel
		delegate: ListItem {
			ListItemLayout {
			title.text : model.name
			Icon {
				width:units.gu(2)
				name:"external-link"
				SlotsLayout.position: SlotsLayout.Trailing;
			}
			Icon {
				width:units.gu(2)
				name:model.icon
				SlotsLayout.position: SlotsLayout.Leading;
			}
			}
			onClicked: Qt.openUrlExternally(model.url)


		}

	}

}
