import QtQuick 2.9
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

ListItem {
    property var name: ""
    property var icon: "settings"
    property alias isChecked: switcher.checked
    property alias isEnabled: switcher.enabled
    property alias switcher: switcher
    property var onSwitching
    property var iconColor: mainLayout.mainColor
    height: layout.height

    ListItemLayout {
        id: layout
        title.text: name
        Icon {
            name: icon
            width: units.gu(3)
            height: units.gu(3)
            SlotsLayout.position: SlotsLayout.Leading
        }

        Switch {
            id: switcher
            SlotsLayout.position: SlotsLayout.Trailing
            onCheckedChanged: if ( enabled ) onSwitching ()
        }
    }
    onClicked: if ( isEnabled ) switcher.checked ? switcher.checked = false : switcher.checked = true
}
