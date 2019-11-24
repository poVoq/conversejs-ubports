# ConverseJS for Ubuntu Touch

This is a HTML5 wrapper for the [ConverseJS](https://github.com/conversejs/converse.js/) Jabber / XMPP chat client to un it on  Ubuntu Touch mobile devices. Thanks a lot to the ConverseJS team, they did all the hard work!

Please note that this is just a HTML5 wrapper with minimal CSS changes to the ConverseJS mobile view mode. Please report issues related to the actual Javascript XMPP client in the upstream issue tracker linked above.

[![OpenStore](https://open-store.io/badges/en_US.png)](https://open-store.io/app/conversejs.povoq)

## Known issues
- Participant list in multi-user-chats (MUCs) opens on joining a group chat and does not work well on small screens.
  - This is a known issue of ConverseJS and is waiting for an upstream fix.
  - Due to this reason the MUC invites option is disabled as it is unusable on mobile screens
- There is no "Send" button in 1:1 chats. Also upstream issue waiting for a fix. You can press the Enter button on the OSK instead.
- When re-joining an open group chat, the OSK is automatically triggerd. Needs fix upstream.
- The @ mentions of MUC partcipants is broken. Needs improvements in mobile view upstream.
- The the emoji picker in broken. Needs improvements in mobile view upstream. Use the OSK emojis instead.
- Automatic status changes are disabled as they depend on mouse movement it seems. Upstream issue.
- XMPP account passwords are stored in plain-text in the qtwebview's sessionStorage (difficult to fix, help wanted).
- There are no push notifications (difficult to implement, see future plans below)

## Todo
- [ ] Initial prototype HTML wrapper with some CSS fixes to the ConverseJS mobile view-mode.
- [ ] Make nice login and settings landing page with Ubuntu-Touch HTML5 UI toolkit.
- [ ] Storage of multiple XMPP accounts for easy switching.
- [ ] XEP-0156: Discovering Alternative XMPP Connection Methods (waiting for next ConverseJS release).
- [ ] Support for selected ConverseJS community plugins.
- [ ] Dark theme support.

## Future plans
If I can get some help to adapt a Ubports push-notification compatible XEP-0357: Push Notifications Push Service application, I would like to enable this in ConverseJS and might host it together with an Ejabberd XMPP server.

## License

Copyright (C) 2019  poVoq

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License version 3, as published
by the Free Software Foundation.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranties of MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
