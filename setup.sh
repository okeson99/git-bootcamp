cat > setup.sh <<'EOF'
#!/usr/bin/env bash
set -euo pipefail
rm -rf .git
git init
git config init.defaultBranch main
git checkout -b main 2>/dev/null || true
git remote add origin git@github.com:okeson99/git-bootcamp.git 2>/dev/null || true
for br in feat-a feat-b; do
  git checkout -b "$br"
  for i in {1..5}; do echo "$br commit $i" > "$br-file$i.txt"; git add "$br-file$i.txt"; git commit -m "$br $i"; done
done
git checkout main
echo "main original" > shared.txt && git add shared.txt && git commit -m "main init"
git merge feat-a --no-edit || true
echo -e "main original\nfeat-a content" > shared.txt
git add shared.txt && git commit --no-edit -m "merge feat-a resolved"
git push origin --all
EOF
