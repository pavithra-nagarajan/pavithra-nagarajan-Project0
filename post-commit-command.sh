cat <<EOF >.git/hooks/post-commit
git log -1 --shortstat > history_log.txt
EOF
chmod +x .git/hooks/post-commit
