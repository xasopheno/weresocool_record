#!/bin/sh
NEWLINE=$'\n'
changes="NEW: 
$(git ls-files -o  --exclude-standard)
EDITED: 
$(git ls-files --modified)"

# fd | entr $(git add . && git commit -m "$changes")

fd | entr -s $"git add . && git commit -m $(echo changes)"


