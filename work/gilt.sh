#!/usr/bin/env bash

alias pgstart="sudo -u postgres pg_ctl -D /opt/local/var/db/postgresql83/defaultdb start"
alias cg="cd /web/gilt"
alias railstags="ctags -a -f tags --tag-relative -R app lib vendor"
alias sc="cg && OVERRIDE_PERFORMANCE_CONTRACTS=true PLAIN_JAVASCRIPTS=true PLAIN_STYLESHEETS=true GILT_DEFAULT_SUBSITE=us RAILS_ENV=development script/console"
alias sp="spec --options ~/.spec.opts"
alias ts="OVERRIDE_PERFORMANCE_CONTRACTS=true PLAIN_JAVASCRIPTS=true PLAIN_STYLESHEETS=true GILT_DEFAULT_SUBSITE=us RAILS_ENV=development thin start"
export GILT_DEFAULT_SUBSITE=us
export EVENT_NOKQUEUE=1
