import QtQuick 2.9
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import "../components"

Page {
    id: helpPage
    anchors.fill: parent

    header: PageHeader {
        title: i18n.tr('Help')
    }


    ScrollView {
        id: scrollView
        width: parent.width
        height: parent.height - header.height
        anchors.top: header.bottom
        contentItem: Column {
            width: helpPage.width

            Label {
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: units.gu(1)
                anchors.rightMargin: units.gu(1)
                wrapMode: Text.WordWrap
                text: i18n.tr("<br>" +
                "<b>Client settings</b><br>" +
                "<br>" +
                "* Various client settings that are passed to the embedded ConverseJS javascript client.<br>" +
                "* Any settings change requires the embedded ConverseJS client to be reloaded.<br>" +
                "<br>" +
                "<b>Desktop Mode</b><br>" +
                "<br>" +
                "* (not yet implemented) Switches to 'fullscreen' viewmode for convergence use.<br>")
            }

        }
    }

}
