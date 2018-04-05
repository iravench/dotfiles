# cbt
alias cbt_np='export PATH="$PATH:./node_modules/.bin"'
alias cbt_reset='npm install && grunt && grunt db:init'

alias cbt_lc='TZ=utc NODE_PORT=4000'
alias cbt_serv='cbt_lc npm start'
alias cbt_lcm='cbt_lc MOCK=1 grunt db:init && MOCK=1 cbt_serv'

alias cbt_t='TZ=utc NODE_ENV=test NODE_PORT=3016 DEBUG=1'
alias cbt_d='cbt_t grunt db:init'
alias cbt_m='cbt_t mocha --reporter spec'
alias cbt_md='cbt_d && cbt_m'

alias chrome_headless='SELENIUM_BROWSER=chrome SELENIUM_BROWSER_HEADLESS=true SELENIUM_BROWSER_BINARY=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias chrome='SELENIUM_BROWSER=chrome ELENIUM_BROWSER_HEADLESS=false SELENIUM_BROWSER_BINARY=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias cbt_mc='chrome_headless cbt_m'
alias cbt_mch='chrome cbt_m'

alias cbt_prod_db='ssh cbt-jump "ssh cbt-production-app1 \"./cbt_dump_db\" " | gunzip | psql -U postgres cbt_production'

# tmp
alias tmp_db='SKIP_MIGRATE=1 script/db --user=root travel_management_platform_development'
alias tmp_reset='bundle install && bundle exec rake db:drop db:create db:reset'
alias tmp_spec='COV=NO bundle exec rspec -cfd'
alias tmp_serv='bundle exec rails server -b 127.0.0.1'
alias tmp_conl='bundle exec rails console'

# brew and cask
alias bcuo='brew cask outdated --greedy | awk -F"\s" "{print $1}" | xargs brew cask upgrade && brew cask cleanup'
alias bubu='bubo && bubc && bcuo'
