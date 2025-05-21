# pylint: disable=C0111
c = c  # noqa: F821 pylint: disable=E0602,C0103
config = config  # noqa: F821 pylint: disable=E0602,C0103
# Change the argument to True to still load settings configured via autoconfig.yml
config.load_autoconfig(False)

config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:136.0) Gecko/20100101 Firefox/136.0', 'https://accounts.google.com/*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
# Allow locally loaded documents to access remote URLs.
config.set('content.local_content_can_access_remote_urls', True, 'file:///home/raghav/.local/share/qutebrowser/userscripts/*')
config.set('content.local_content_can_access_file_urls', False, 'file:///home/raghav/.local/share/qutebrowser/userscripts/*')

# google meet permissions
config.set('content.media.audio_capture', True, 'https://meet.google.com/*')
config.set('content.media.audio_video_capture', True, 'https://meet.google.com/*')
config.set('content.media.video_capture', True, 'https://meet.google.com/*')
config.set('content.desktop_capture', True, 'https://meet.google.com/*')

# Keybindings
config.unbind('b')
config.bind('bd', 'set colors.webpage.darkmode.enabled true', mode = 'normal')
config.bind('bl', 'set colors.webpage.darkmode.enabled false', mode = 'normal')
config.unbind('th')
config.bind('th', 'config-cycle tabs.show never multiple')
config.bind('sm', 'config-cycle colors.webpage.darkmode.enabled true false')
config.unbind('d') # Delete tab


# Options
# c.content.user_stylesheets = ['~/.config/qutebrowser/styles/youtube.css']
# c.qt.highdpi = True
# c.qt.environ = {
#     "QT_AUTO_SCREEN_SCALE_FACTOR": "1.5",
#     "QT_SCALE_FACTOR": "2"
#                 }

# Tab options
c.tabs.position = 'top'
c.tabs.show = 'multiple'
c.tabs.padding = {'top': 5, 'bottom': 5, 'left': 9, 'right': 9}
c.tabs.indicator.width = 0 # no tab indicators
c.tabs.width = '10%'
# c.window.transparent = True # apparently not needed
# c.tabs.title.format = "{audio}{current_title}"

# Dark mode
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = 'never'
