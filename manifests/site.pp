node default {
 # include demo::nginx
  include demo::linuxappbase
  include demo::apache
  include demo::perl
  include demo::mysql
  # include demo::solr
}

node '46bd50a1a43d' {
  include demo::webserver
}

node '35580997fdd4' {
  include demo::webserver
}

