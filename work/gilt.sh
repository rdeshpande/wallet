#!/usr/bin/env bash

alias cg="cd /web/gilt"
alias pgstart="sudo -u postgres pg_ctl -D /opt/local/var/db/postgresql83/defaultdb start"
alias pgstop="sudo -u postgres pg_ctl -D /opt/local/var/db/postgresql83/defaultdb stop -m immediate"
alias railstags="ctags -a -f tags --tag-relative -R app lib vendor"
alias sc="cg && OVERRIDE_PERFORMANCE_CONTRACTS=true PLAIN_JAVASCRIPTS=true PLAIN_STYLESHEETS=true GILT_DEFAULT_SUBSITE=us RAILS_ENV=development script/console"
alias sp="cg && spec --options ~/.spec.opts"
alias ts="cg && OVERRIDE_PERFORMANCE_CONTRACTS=true PLAIN_JAVASCRIPTS=true PLAIN_STYLESHEETS=true GILT_DEFAULT_SUBSITE=us RAILS_ENV=development thin start"
export GILT_DEFAULT_SUBSITE=us
export EVENT_NOKQUEUE=1
export PATH=/opt/nginx/sbin:/web/tools/bin:$PATH
