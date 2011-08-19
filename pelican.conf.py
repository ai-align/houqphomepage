# -*- coding: utf-8 -*-
AUTHOR = u'Qingping Hou'
SITENAME = u"Qingping's Page"
SITEURL = 'http://qingpinghou.appspot.com'

GITHUB_URL = 'http://github.com/houqp/'
DISQUS_SITENAME = "blog-notmyidea"
PDF_GENERATOR = False
REVERSE_CATEGORY_ORDER = True
LOCALE = ""
DEFAULT_LANG = 'en'
DEFAULT_PAGINATION = 2

FEED_RSS = 'feeds/all.rss.xml'
FEED = 'feeds/all.atom.xml'
CATEGORY_FEED_RSS = 'feeds/%s.rss.xml'

THEME = '/home/dave/documents/code/web/houqp.org/scholar'
CSS_FILE = 'style.css'

LINKS = (('Biologeek', 'http://biologeek.org'),
         ('Filyb', "http://filyb.info/"),
         ('Libert-fr', "http://www.libert-fr.com"),
         ('Wiki', "http://notes.houqp.com"),
         ('Blog', "http://www.houqp.com/"),)

SOCIAL = (('twitter', 'http://twitter.com/houqp'),
          ('github', 'http://github.com/houqp'),)

# global metadata to all the contents
DEFAULT_METADATA = (('yeah', 'it is'),)

# static paths will be copied under the same name
STATIC_PATHS = ["pictures",]

# A list of files to copy from the source to the destination
FILES_TO_COPY = (('extra/robots.txt', 'robots.txt'),)

# foobar will not be used, because it's not in caps. All configuration keys
# have to be in caps
foobar = "barbaz"
