# Rebase interactive

Rebase interactive will allow you to squash many commits into a single commit message. 

This way you will help your team to have a clear understanding of what you have done :)

```
git rebase -i HEAD~n
```

Once squashed, ```git push``` or ```git push --force``` if you already pushed code.

# Commit Amend

Amend a commit will allow you to modify last commit message (it can be done also by executing ```git reset HEAD~1```)
```
git commit --amend
```
If you already pushed previous commit to remote branch, you must push ```git push --force``` to update remote branch.
