cat <<EOF >.git/hooks/post-commit
git log -1 --shortstat > history_log.txt
EOF
chmod +x .git/hooks/post-commit
cat <<EOF >.git/hooks/pre-commit
echo "pavithra"
EOF
chmod +x .git/hooks/pre-commit
