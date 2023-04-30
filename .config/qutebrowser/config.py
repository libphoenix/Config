import subprocess
import os
import draw
from qutebrowser.api import interceptor


config.load_autoconfig(False)

draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

c.fonts.default_family = [ 'ComicMono' ]
c.fonts.default_size = '16px'

