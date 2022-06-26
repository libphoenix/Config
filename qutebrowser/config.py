import subprocess
import os
from qutebrowser.api import interceptor

"""
qutebrowser settings for video
for more settings check out
https://qutebrowser.org/doc/help/settings.html
"""

config.load_autoconfig(False)
# ================== Youtube Add Blocking ======================= {{{
def filter_yt(info: interceptor.Request):
    """Block the given request if necessary."""
    url = info.request_url
    if (
        url.host() == "www.youtube.com"
        and url.path() == "/get_video_info"
        and "&adformat=" in url.query()
    ):
        info.block()


interceptor.register(filter_yt)
# }}}
#c.content.blocking.method = 'adblock'
#c.content.blocking.adblock.lists = [
#        "https://easylist.to/easylist/easylist.txt",
#        "https://easylist.to/easylist/easyprivacy.txt",
#        "https://easylist.to/easylist/fanboy-social.txt",
#        "https://secure.fanboy.co.nz/fanboy-annoyance.txt",
#        "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt",
#        "https://gitlab.com/curben/urlhaus-filter/-/raw/master/urlhaus-filter.txt",
#        "https://pgl.yoyo.org/adservers/serverlist.php?showintro=0;hostformat=hosts",
#        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/legacy.txt",
#        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt",
#        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
#        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2021.txt",
#        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badware.txt",
#        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
#        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/badlists.txt",
#        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
#        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
#        "https://www.i-dont-care-about-cookies.eu/abp/",
#        "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
#        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt"]
