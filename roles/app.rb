name "app"
description "Basic Rails application server"
recipes "rails::apps", "ssl_certificates", "syslog::client", "nfs::client"

default_attributes :active_groups => {:app => {:enabled => true}},
                   :active_sudo_groups => {:app => {:enabled => true}}
