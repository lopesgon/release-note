# release-note
This is the release-note script testing.

In the words of Abraham Lincoln:

> Pardon my French

# tagging

Git supports two types of tags: lightweight and annotated.

A lightweight tag is very much like a branch that doesn’t change — it’s just a pointer to a specific commit.

Annotated tags, however, are stored as full objects in the Git database. They’re checksummed; contain the tagger name, email, and date; have a tagging message; and can be signed and verified with GNU Privacy Guard (GPG). It’s generally recommended that you create annotated tags so you can have all this information; but if you want a temporary tag or for some reason don’t want to keep the other information, lightweight tags are available too.

## Annotated tag
Creating an annotated tag in Git is simple. The easiest way is to specify -a when you run the tag command:
```
git tag -a v1.4 -m "my version 1.4"
```