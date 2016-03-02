include cpan

class demo::perl {

    $cpanmodules = [ 'YAML',
                     'HTML::Template',
                     'HTML::Template::Expr',
                     'CGI::Application',
                     'CGI::Application::Plugin::REST',
                     'CGI::Application::Plugin::Redirect',
                     'CGI::Application::Plugin::AutoRunmode',
                     'HTTP::Headers',
                     'LWP::UserAgent',
                     'DBI',
                     'Apache::DBI',
                     'DBD::Sybase',
                     'CGI::Application::Plugin::DBH',
                     'XML::Simple',
                     'HTTP::Status',
                     'HTTP::Negotiate',
                     'File::Listing',
                     'HTTP::Daemon',
                     'Net::HTTP',
                     'HTTP::Cookies',
                     'HTTP::Date',
                     #'HTTP::Request::Common',
                     'Test::More',
                     'HTTP::Response',
                     'WWW::RobotRules',
                     'HTTP::Request' ]

    cpan { $cpanmodules:
      ensure  => present,
      #      require => Class['::cpan'],
      force   => true,
    }
}

