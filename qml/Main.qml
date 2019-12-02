import QtQuick 2.9
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import Qt.labs.settings 1.0

import "components"
import "pages"

MainView {
    id: root
    objectName: 'mainView'
    applicationName: 'conversejs.povoq'
    automaticOrientation: true

    width: units.gu(45)
    height: units.gu(75)

    readonly property var version: "0.2.0"

    // automatically anchor items to keyboard that are anchored to the bottom
    anchorToKeyboard: true

    PageStack {
        id: mainStack
    }

    Settings {
        id: appSettings
        property var instance
        property bool openLinksExternally: true
        property bool incognitoMode: false
        property bool hideBottomControls: false
    }

    QtObject {
		id:helperFunctions
		
		function getInstanceURL() {
			return appSettings.instance.indexOf("index") != -1 ? appSettings.instance : "https://" + appSettings.instance
		}
	}

    Component.onCompleted: {
        if ( appSettings.instance ) {
           mainStack.push(Qt.resolvedUrl("./pages/ConverseJSWebview.qml"))
        }
        else {
            mainStack.push(Qt.resolvedUrl("./pages/LandingPage.qml"))
        }
    }
}
