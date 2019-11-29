# ConverseJS for Ubuntu Touch

This is a HTML5 wrapper for the [ConverseJS](https://github.com/conversejs/converse.js/) Jabber / XMPP chat client to run it on  Ubuntu Touch mobile devices. Thanks a lot to the ConverseJS team, they did all the hard work!

Please note that this is just a HTML5 wrapper with minimal CSS changes to the ConverseJS mobile view mode. Please report issues related to the actual Javascript XMPP client in the upstream issue tracker linked above.

[![OpenStore](https://open-store.io/badges/en_US.png)](https://open-store.io/app/conversejs.povoq)

## Known issues
- Participant list in multi-user-chats (MUCs) is very cramped on small screens.
  - This is a known issue of ConverseJS and is waiting for an upstream improvement.
- When re-joining an open group chat, the OSK is automatically triggerd. Needs fix upstream.
- The overlay modals of the connection control box are acting up sometimes, restart app to fix.
- The @ mentions of MUC partcipants is broken. Needs improvements in mobile view upstream.
- The the emoji picker in broken. Needs improvements in mobile view upstream. Use the OSK emojis instead.
- Automatic status changes are acting strangely as they depend on mouse movement it seems. Upstream issue.
- XMPP account passwords are stored in plain-text in the qtwebview's sessionStorage (difficult to fix, help wanted).
- There are no push notifications (difficult to implement, see future plans below)

## Todo
- [x] Initial prototype HTML wrapper with some CSS fixes to the ConverseJS mobile view-mode.
- [ ] XEP-0156: Discovering Alternative XMPP Connection Methods (waiting for next ConverseJS release).
- [ ] Support for selected ConverseJS community plugins (voice messages?).
- [ ] Make nice login and settings landing page with Ubuntu-Touch UI toolkit.
- [ ] xmpp: url hooks?
- [ ] Storage of multiple XMPP accounts for easy switching?
- [ ] Notification support?
- [ ] Dark theme support?

## Future plans
If I can get some help to adapt a Ubports push-notification compatible XEP-0357: Push Notifications Push Service application, I would like to enable this in ConverseJS and might host it together with an Ejabberd XMPP server.

## License

Copyright (C) 2019  poVoq

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License version 3, as published
by the Free Software Foundation.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranties of MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
