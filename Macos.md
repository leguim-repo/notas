# MacOs

## Generate "Read Receipts" in Mail

```code
$ defaults read com.apple.mail UserHeaders
$ defaults write com.apple.mail UserHeaders \
'{"Disposition-Notification-To" = "user@domain"; }'
```

Source: [macworld](http://hints.macworld.com/article.php?story=20050512155856402)

## Show/Hide files

To show hidden files:

```code
defaults write com.apple.finder AppleShowAllFiles -bool true
killall Finder
````

To hide files:

```code
defaults write com.apple.finder AppleShowAllFiles -bool false
killall Finder
```

## Change crontab editor

By default crontab editor is vim, to change:

```code
export EDITOR=/usr/bin/nano
export VISUAL=nano
```

This is valid for unix systems too  

## Command equivalent at tree in MacOs

Easy response, install tree with brew

```code
brew install tree
```

## Send email with console

The follow command send a email in text format. (Valid for linux too)  

```code
echo "Hello World!!!" | mail -s "Mail Subject Here" "emailtarget@here.dot"
```

And the follow examples send a email in format HTML.  

```code
cat confirmation.html | mail -s "$(echo -e "This is the subjecto of Sigeva\nContent-Type: text/html")" "emailtarget@here.dot"
echo "<b>HTML Message goes here</b>" | mail -s "$(echo -e "This is the subject\nContent-Type: text/html")" foo@example.com

```

##  Combination of keys Meta-Z

Sometimes when I installed minicom and I need change parameter don't remember the combintaion keys of Meta-Z.  
The magic combination of Meta-Z is: Esc + z

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)
