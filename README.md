# release-note
This is the release-note script testing.

## how-to
1. copy/paste script in project root folder
2. move to project root folder and run commands:
```
mkdir release-notes
chmod 755 release-note.sh
```
3. add to .gitignore: 
```
release-notes
```
4. update project (git rebase)
5. run command: 
    - *param1* (mandatory) is previous tag deployed
    - *param2* (optional) is last tag deployed (default is HEAD)
```
./release-note.sh {param1} {param2}
```

# tagging

Git supports two types of tags: lightweight and annotated.

A lightweight tag is very much like a branch that doesn’t change — it’s just a pointer to a specific commit.

Annotated tags, however, are stored as full objects in the Git database. They’re checksummed; contain the tagger name, email, and date; have a tagging message; and can be signed and verified with GNU Privacy Guard (GPG). It’s generally recommended that you create annotated tags so you can have all this information; but if you want a temporary tag or for some reason don’t want to keep the other information, lightweight tags are available too.

## Annotated tag
Creating an annotated tag in Git is simple. The easiest way is to specify -a when you run the tag command:
```
git tag -a v1.4 -m "my version 1.4"
```

## Pushing tag
```
git push origin v1.4
```