import QtQuick 2.9
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import "../components"

Page {
    id: privacyPolicyPage
    anchors.fill: parent

    header: PageHeader {
        title: i18n.tr('Privacy Policy')
    }


    ScrollView {
        id: scrollView
        width: parent.width
        height: parent.height - header.height
        anchors.top: header.bottom
        contentItem: Column {
            width: privacyPolicyPage.width

            Label {
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: units.gu(1)
                anchors.rightMargin: units.gu(1)
                wrapMode: Text.WordWrap
                text: i18n.tr("<br>" +
                "<b>ConverseJS client</b><br>" +
                "<br>" +
                "* ConverseJS for Ubuntu Touch is a XMPP protocol client based on ConverseJS. All communications conducted while using ConverseJS use the XMPP server of the user account specificed<br>" +
                "* All communication of substantive content between ConverseJS for Ubuntu Touch and any XMPP server is done in secure way, using transport encryption to protect it. End-to-end encryption using the OMEMO standard is used where possible.<br>" +
                "* OMEMO private encryption keys are stored in the local-storage of qWebEngine on the device only.<br>" +
                "* ConverseJS for Ubuntu Touch is not responsible for the data processing carried out by any XMPP server<br>" +
                "* While logged in, the password of the XMPP account is temporarily stored in clear-text in the qWebEngine session-storage.<br>" +
                "* If the 'Keep me logged in' option is chosen, the password of the XMPP account will be stored on the device in clear-text in the qWebEngine local-storage.<br>" +
                "<br>" +
                "<b>Push Notifications</b><br>" +
                "<br>" +
                "* (not yet implemented) The XMPP server selected by the user will automatically send push notifications to the UBports push service trough a application specific push-notification proxy (P2 software). These notifications are encrypted with the https protocol between the device and the XMPP server and all further steps.<br>")
            }

        }
    }

}
