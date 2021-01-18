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

---
<!-- Pit i Collons -->
![Coded In Barcelona](https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/currentfooter.png)
