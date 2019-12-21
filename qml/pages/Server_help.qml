import QtQuick 2.9
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import "../components"

Page {
    id: serverhelpPage
    anchors.fill: parent

    header: PageHeader {
        title: i18n.tr('Server Help')
    }

    ScrollView {
        id: scrollView
        width: parent.width
        height: parent.height - header.height
        anchors.top: header.bottom
        contentItem: Column {
            width: serverhelpPage.width

            Label {
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: units.gu(1)
                anchors.rightMargin: units.gu(1)
                wrapMode: Text.WordWrap
                text: i18n.tr("<br>" +
                "<b>Why not port 5222?</b><br>" +
                "<br>" +
                "* ConverseJS for Ubuntu Touch uses a pure Javascript client that was designed to run in a web-browser. It therefore cannot directly connect to port 5222 like other XMPP clients.<br>" +
                "* You need to consult with your XMPP server admin regarding the URL of the Websocket or BOSH connection. Modern XMPP servers usually have it enabled, but it might not be as simple as the placeholder suggests.<br>" +
                "* In a future version (6+) ConverseJS will attempt to auto discover these alternative connection methods.<br>" +
                "<br>" +
                "<b>Websocket connections</b><br>" +
                "<br>" +
                "* This is the recommended connection method.<br>" +
                "* By default newer Ejabberd servers are configured to expose it on 'wss://example.com/ws/'. This assumes the server uses transport encryption. Otherwise use 'ws://example.com/ws/'.<br>" +
                "* You might have to add the port like this: 'wss://example.com:5280/ws/' or similar.<br>" +
                "* Smacks management is enabled by default.<br>" +
                "<br>" +
                "<b>BOSH connections</b><br>" +
                "<br>" +
                "* Fallback option for older XMPP servers.<br>" +
                "* By default newer Ejabberd servers are configured to expose it on 'https://example.com/bosh/'. This assumes the server uses transport encryption. Otherwise use 'http://example.com/bosh/'.<br>" +
                "* For Prosody servers it might also be: 'http://example.com:5280/http-bind/' or similar.<br>" +
                "* If both a Websocket and a BOSH URL is set, the Websocket connection will be used if possible.<br>")
            }
        }
    }
}
