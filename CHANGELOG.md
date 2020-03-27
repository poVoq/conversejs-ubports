ConverseJS-ubports Changelog
================
v0.2.1
---------------------------
 * Bulmaswatch Ubuntu styled CSS theme for HTML login page (WIP)
 * Actually enable XEP-0156 (still untested and works only with XML method)
 * Disabled by default status synchronization with other clients
 * Added option to switch theme (for now default and concord)
 * Added further client settings

v0.2.0
---------------------------
 * Update to ConverseJS 6.0.1 (see upstream changes)
 * Optional automatic login (use UT tweak tool to reset)
 * XEP-0156: Discovering Alternative XMPP Connection support (untested)
 * Removed some CSS hacks that are no longer needed
 * Re-enabled MUC participant autocomple (with @ but it is a bit buggy)
 * Slightly improved HTML login page & logo

v0.1.3
---------------------------
 * Added new SVG logo
 * Added sounds (disabled by default)
 * Changed size & location of send button
 * Added some padding to chat-toolbar buttons
 * Support for XEP-0070 : Verifying HTTP Requests via XMPP for 2 factor auth.
 * Reenabled MUC invite input and various participant list sizing fixes

v0.1.2
---------------------------
 * minor settings change that should improve performance a bit

v0.1.1 (first release)
---------------------------
 * work-around to obfuscate the absolute path restriction

v0.1.0 (pre-release)
---------------------------
 * Based on ConverseJS 5.0.5 release
 * Some basic CSS fixes to make the mobile view-mode of ConverseJS more usable on small screens
 * Very basic HTML login wrapper to allow specifying websocket or Bosh URL
 * Storage of user JID and password (clear-text!) in sessionStorage
