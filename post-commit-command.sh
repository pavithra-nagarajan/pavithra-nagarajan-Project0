cat <<EOF >.git/hooks/post-commit
git log -1 --shortstat > history_log.txt
curl -X POST --data "@history_log.txt" "https://webhook.site/d33b1d37-4613-49a1-b52f-9098e340b17e"
EOF
chmod +x .git/hooks/post-commit
cat <<EOF >.git/hooks/pre-commit
echo "pavithra"
curl -X POST --data "@test_log.txt" "https://webhook.site/d33b1d37-4613-49a1-b52f-9098e340b17e"
EOF
chmod +x .git/hooks/pre-commit
