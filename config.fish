export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/usr/local/opt/openssl@1.1"

alias be="bundle exec"
alias pg_thrive_prod="PGPASSWORD='XAzxdLGdf3w6ptpP' psql -h thrivedata2.cluster-ca3fkbvccdiw.us-east-1.rds.amazonaws.com -U rdeshpande thrive_production"
alias pg_solana_stage="PGPASSWORD='Ey4VXZGDu8Sszq8RYIDJ' psql -h solana-staging.cplgwlxdm2bb.us-east-1.rds.amazonaws.com -U postgres solana_staging"
alias pg_solana_prod="PGPASSWORD='DwYMh9USNSM7G7XkApLq5GwVnNJeZ6WD' psql -h solana-production.cplgwlxdm2bb.us-east-1.rds.amazonaws.com -U postgres solana_production"
alias g="git"
alias psql="/usr/local/bin/pgcli"

set -x NPM_TOKEN token

fish_vi_key_bindings
