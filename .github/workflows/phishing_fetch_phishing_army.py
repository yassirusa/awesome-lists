name: Update red phishing army domains List

on:
  schedule:
    - cron: '0 */12 * * *' 
  workflow_dispatch:

jobs:
  fetch-all-list-files:
    runs-on: ubuntu-latest

    steps:
      - name: Check out repository
        uses: actions/checkout@v3
        
      - name: Create lookup
        run: |
          cd "Lists/Phishing/phishing_army/"
          python3 fetch_phishing_army_domains_list.py
          
      - name: List files in the target directory
        run: ls -la "Lists/Phishing/phishing_army/"

      - name: Commit and push results
        run: |
          git config --local user.email "action@github.com"
          git config --local user.name "GitHub Action"
          
          # Stash changes before pulling to avoid conflicts
          git stash --include-untracked
          git pull --rebase
          git stash pop || echo "No stashed changes to apply"

          git add "Lists/Phishing/phishing_army/*"
          git commit -m "Update phishing army domains list" --allow-empty
          git push
