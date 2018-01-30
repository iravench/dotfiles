# cbt
alias cbt_np='export PATH="$PATH:./node_modules/.bin"'
alias cbt_reset='npm install && grunt && grunt db:init'

alias cbt_l='TZ=utc NODE_PORT=4000'
alias cbt_lc='cbt_l npm start'
alias cbt_lcm='cbt_l MOCK=1 grunt db:init && MOCK=1 cbt_lc'

alias cbt_t='TZ=utc NODE_ENV=test NODE_PORT=3016 DEBUG=1'
alias cbt_d='cbt_t grunt db:init'
alias cbt_m='cbt_t mocha'
alias cbt_md='cbt_d && cbt_m'

alias chrome_headless='SELENIUM_BROWSER=chrome SELENIUM_BROWSER_HEADLESS=true SELENIUM_BROWSER_BINARY=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias cbt_mc='chrome_headless cbt_m'

alias cbt_mcd='chrome_headless cbt_t node --inspect node_modules/mocha/bin/_mocha'

alias cbt_prod_db='ssh cbt-jump "ssh cbt-production-app1 \"./cbt_dump_db\" " | gunzip | psql -U postgres cbt_production'

# tmp
alias tmp_db='SKIP_MIGRATE=1 script/db --user=root travel_management_platform_development'
alias tmp_reset='bundle install && bundle exec rake db:drop db:create db:reset'
alias tmp_spec='bundle exec rspec -cfd'
alias tmp_serv='bundle exec rails server'
alias tmp_conl='bundle exec rails console'
