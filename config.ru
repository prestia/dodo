require 'bundler' 
Bundler.setup

require 'toto'

# Rack config
use Rack::Static, :urls => ['/css', '/js', '/images', '/favicon.ico'], :root => 'public'
use Rack::CommonLogger

if ENV['RACK_ENV'] == 'development'
  use Rack::ShowExceptions
end

#
# Create and configure a toto instance
#
toto = Toto::Server.new do
  #
  # Add your settings here
  # set [:setting], [value]
  # 

  # set :blog_title,   ''                                        # main blog title
  # set :author,       ''                                        # blog author
  # set :root,         "index"                                   # page to load on /
  # set :markdown,     :smart                                    # use markdown + smart-mode
  # set :disqus,       ''                                        # disqus id, or false
  # set :fulltext,     ''                                        # show full article text on index, true or fals
  # set :summary,      :max => 150, :delim => /~/                # length of article summary and delimiter
  # set :ext,          'txt'                                     # file extension for articles
  # set :cache,        28800                                     # cache duration, in seconds

  # set :git,          false                                     # github username
  # set :twitter,      false                                     # twitter username
  # set :description,  ''                                        # default blog description
  # set :main_url,     ''                                        # main, non-blog url
  # set :analytics,    ''                                        # your site's Google Analytics ID

  # set :date,         lambda {|now| now.strftime("%B #{now.day.ordinal} %Y") } # date format for articles

end

run toto


