LOG_FILE=$1

BRANCH_NAME=$(git branch --show-current)
git log --oneline $BRANCH_NAME ^master | sed 's/^[0123456789abcdef]\{8\}\s//' >> ${LOG_FILE:='commit-dump.log'}
