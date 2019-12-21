import QtQuick 2.9
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
import "../components"

Page {
    id: clientSettingsPage
    anchors.fill: parent

    header: PageHeader {
        title: i18n.tr('Client settings')
    }

    ScrollView {

        id: scrollView
        width: parent.width
        height: parent.height - header.height
        anchors.top: header.bottom
        contentItem: Column {
            width: clientSettingsPage.width
            id: clientSettingsList
            property var enabled: false
            opacity: enabled ? 1 : 0.5

            SettingsListSwitch {
                name: i18n.tr("OMEMO by default")
                id: setting_omemo_default
                icon: "preferences-system-privacy-symbolic"
                isEnabled: clientSettingsList.enabled
                onSwitching: function () {
                    if ( isEnabled ) PageActions.changeRule ( ".m.rule.message", isChecked, "underride" )
                }
            }

            SettingsListSwitch {
                name: i18n.tr("Join/Leave MUC messages")
                id: setting_muc_messages
                icon: "user-switch"
                isEnabled: clientSettingsList.enabled
                onSwitching: function () {
                    if ( isEnabled ) PageActions.changeRule ( ".m.rule.room_one_to_one", isChecked, "underride" )
                }
            }

            SettingsListSwitch {
                name: i18n.tr("Enable activity sounds")
                id: setting_sounds
                icon: "preferences-desktop-sounds-symbolic"
                isEnabled: clientSettingsList.enabled
                onSwitching: function () {
                    if ( isEnabled ) PageActions.changeRule ( ".m.rule.contains_user_name", isChecked, "default" )
                }
            }

            SettingsListSwitch {
                name: i18n.tr("Enable Emoji picker")
                id: setting_emoji_picker
                icon: "like"
                isEnabled: clientSettingsList.enabled
                onSwitching: function () {
                    if ( isEnabled ) PageActions.changeRule ( ".m.rule.invite_for_me", isChecked, "override" )
                }
            }

            SettingsListSwitch {
                name: i18n.tr("Enable Send button")
                id: setting_send_button
                icon: "send"
                isEnabled: clientSettingsList.enabled
                onSwitching: function () {
                    if ( isEnabled ) PageActions.changeRule ( ".m.rule.member_event", isChecked, "override" )
                }
            }

            SettingsListSwitch {
                name: i18n.tr("Desktop Mode")
                id: setting_desktop_mode
                icon: "computer-symbolic"
                isEnabled: clientSettingsList.enabled
                onSwitching: function () {
                    if ( isEnabled ) PageActions.changeRule ( ".m.rule.suppress_notices", !isChecked, "override" )
                }
            }

            Component.onCompleted: PageActions.getRules ()

        }
    }
}
