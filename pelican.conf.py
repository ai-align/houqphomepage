# -*- coding: utf-8 -*-
AUTHOR = u'Qingping Hou'
SITENAME = u"QingpingHou@homepage:"
#SITEURL = 'http://qingping-hou.appspot.com'
SITEURL = 'http://127.0.0.1:8000'

GITHUB_URL = 'http://github.com/houqp/'
#DISQUS_SITENAME = "blog-notmyidea"
PDF_GENERATOR = False
#RELATIVE_URLS = False
REVERSE_CATEGORY_ORDER = True
LOCALE = ""
DEFAULT_LANG = 'en'
DEFAULT_PAGINATION = 2

FEED_RSS = 'feeds/all.rss.xml'
FEED = 'feeds/all.atom.xml'
CATEGORY_FEED_RSS = 'feeds/%s.rss.xml'

THEME = '/home/dave/documents/code/web/houqp.org/scholar'
CSS_FILE = 'style.css'

MENUITEMS = (('Home', SITEURL),
             #('Research', SITEURL + '/pages/research.html'),
             ('Teaching', SITEURL + '/pages/teaching.html'),
             ('Software', SITEURL + '/pages/software.html'),
             ('Vita', SITEURL + '/pages/vita.html'),
             ('Misc', SITEURL + '/pages/misc.html'),)

# static paths will be copied under the same name
STATIC_PATHS = ["pictures",]

# A list of files to copy from the source to the destination
FILES_TO_COPY = (('extra/robots.txt', 'robots.txt'),)

LAST_UPDATE = '10/10/1010'
POWER_BY = 'Powered by \
            <a href="https://github.com/ametaireau/pelican">Pelican</a>, \
            <a href="http://drydrop.binaryage.com/">Drydrop</a>, \
            <a href="https://github.com">Github</a> and \
            <a href="https://appengine.google.com">Appengine.</a>'

