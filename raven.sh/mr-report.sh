if [ "$PWD" != '/home/will/Desktop/gitlab-mr-cli-tool' ]; then
  echo "Changing to gitlab-mr-cli-tool directory"
  cd /home/will/Desktop/gitlab-mr-cli-tool
fi

npm start
code ./reports/MR.md
