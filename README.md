## wine_colors_from_gtk

( from https://gist.github.com/endolith/74192 )

This is a Python script to extract GNOME/GTK's color scheme and apply it to Wine, so that the themes (approximately) match.

Instructions:
1. Set your Gnome theme as you would like it
2. Run with a command like "python wine_colors_from_gtk.py"
3. Restart any apps running in Wine. They should match the Gnome theme colors now.

Better description with screenshots here: http://www.endolith.com/wordpress/2008/08/03/wine-colors/

This is also stored on https://code.launchpad.net/~endolith/+junk/wine-color-scraper
Just trying out gist.github.com...


To do:

* Needs to separate out scrapers for each GTK engine where necessary. (Can't an interface for this just be built into the engines instead?)
* Copy Gnome fonts as well as colors. (Not sure where Wine stores these settings.)
* Something would need to call this script every time the Gnome theme is changed.

Everything else is working for me.

Other previous discussions:
http://ubuntuforums.org/showthread.php?t=55286&page=3#29
http://ubuntuforums.org/showthread.php?t=878068
http://www.mail-archive.com/pygtk@daa.com.au/msg16400.html
http://www.mail-archive.com/gtk-app-devel-list@gnome.org/msg12076.html
http://www.wine-doors.org/trac/ticket/411

wineconfig.py and winewrite.py scripts in Guidance package for KDE do the same things:

http://kde-guidance.sourcearchive.com/documentation/0.8.0-0ubuntu5/dir_b125788d4a71372d5142465501c18d05.html

Similar code is built into Mozilla:

http://www.google.com/codesearch/p?hl=en#e_ObwTAVPyo/widget/src/gtk2/nsLookAndFeel.cpp&q=nsLookAndFeel.cpp

Will be integrated into Wine Doors? http://www.wine-doors.org/trac/changeset/1536


All of Wine's 31 possible user.reg color values
Asterisk * next to comment if I've found a value that works for most themes
Question mark ? next to comment if not sure or can't find anywhere to scrape from

Some descriptions:
http://www.quimp.net/gamemaker/system-colors
http://www.endolith.com/wordpress/2008/08/03/wine-colors/
http://support.microsoft.com/kb/58336
http://msdn.microsoft.com/en-us/library/system.drawing.systemcolors_properties(VS.80).aspx

TitleText Active title bar text
ActiveTitle Left end of active title bar
GradientActiveTitle Right end of active title bar
ActiveBorder Active window border
InactiveTitleText Inactive title bar text
InactiveTitle Left end of inactive title bar
GradientInactiveTitle Right end of inactive title bar
InactiveBorder Inactive window border

AppWorkSpace Background color of multiple-document interface
Background Desktop solid color

ButtonText Button/tab text and glyphs
ButtonHilight Outermost button higlight / Grayed-out button text shadow
ButtonLight Inner button highlight, usually same as ButtonFace
ButtonFace Background for buttons and all 3D objects
ButtonAlternateFace ???
ButtonShadow Shadows of buttons / Grayed-out button text
ButtonDkShadow Outermost shadow of buttons

GrayText Grayed out text in windows, like labels for unavailable widgets
Hilight Background of selected text
HilightText Selected text
HotTrackingColor Single-click navigation hover color

InfoText ToolTip text
InfoWindow ToolTip background

Menu Background for menus, also background for menu bars in 3D mode
MenuBar Background for menu bars - rarely seen due to 3D menus
MenuHilight Highlight for flat menus - in 3D mode, Hilight is used instead
MenuText Menu text

Scrollbar Background color of scrollbar, but only in some apps
Window Background color of notepad, for instance
WindowFrame Glow around focused widget
WindowText Text in notepad, for instance


These were all found by trial and error. Please point out any mistakes.

License is GPL, I guess. If you need some other license or a more explicit statement, let me know.
