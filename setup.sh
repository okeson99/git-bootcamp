initialises new git repo (or uses current)
creates 3 branches (feat-a, feat-b, main)
adds 5 commits on each branch (different file each commit)
merges feat-a into main — intentional merge conflict
resolves conflict (keep both blocks)
pushes all branches to GitHub via SSH (no HTTPS)
README.md — shows green GitHub Actions badge proving the script ran successfully
idempotent — run twice → same result, no duplicates
