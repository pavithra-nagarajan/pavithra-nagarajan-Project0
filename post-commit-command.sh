#!/bin/sh
cat <<EOF >.git/hooks/post-commit
#!/bin/sh
# Get log and store it into text file
git log -1 --shortstat > history_log.txt
# Send store file to RevPro
curl -X POST --data "@history_log.txt" "https://webhook.site/d33b1d37-4613-49a1-b52f-9098e340b17e"
EOF
# make directory executable
chmod +x .git/hooks/post-commit
