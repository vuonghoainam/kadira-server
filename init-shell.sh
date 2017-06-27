# init-shell.sh

# DB settings
export APP_MONGO_URL="mongodb://dev:chord@localhost:27017/test?replicaSet=rs0"
export APP_MONGO_OPLOG_URL="mongodb://dev:chord@localhost:27017/local?authSourc$"
export DATA_MONGO_URL="mongodb://dev:chord@localhost:27017/test?replicaSet=rs0"
#export MAIL_URL="smtp://postmaster%40kadira.io:9jx4fqhdfbg5@smtp.mailgun.org:5$"

# Engine settings
export ENGINE_PORT=11011

# UI settings
export UI_PORT=4000
export UI_URL="http://localhost:$UI_PORT"

# Monitoring Setup

export LIBRATO_EMAIL
export LIBRATO_TOKEN