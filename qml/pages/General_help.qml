import QtQuick 2.9
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import "../components"

Page {
    id: generalhelpPage
    anchors.fill: parent

    header: PageHeader {
        title: i18n.tr('General Help')
    }

    ScrollView {
        id: scrollView
        width: parent.width
        height: parent.height - header.height
        anchors.top: header.bottom
        contentItem: Column {
            width: generalhelpPage.width

            Label {
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: units.gu(1)
                anchors.rightMargin: units.gu(1)
                wrapMode: Text.WordWrap
                text: i18n.tr("<br>" +
                "<b>About this app</b><br>" +
                "<br>" +
                "* ConverseJS for Ubuntu Touch is a qt QML wrapper that allows to manage user accounts and client settings that are passed to a ConverseJS client that runs from locally stored HTML/JS files inside and embedded browser.<br>" +
                "* Only minimal layout changes via CSS overwrites are done to an otherwise unmodified ConverseJS client.<br>" +
                "* Please be aware that if you chose to keep logged into your XMPP account password will be stored in clear-text on the device!<br>" +
                "<br>" +
                "<b>Using ConverseJS</b><br>" +
                "<br>" +
                "* ConverseJS is a XMPP client written in Javascript. It runs in an embedded qWebEngine browser based on Chromium.<br>")
            }
        }
    }
}
