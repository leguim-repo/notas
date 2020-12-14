# MacOs

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

---
<!-- Pit i Collons -->
![Coded in Barcelona](codedinbcn.png "Coded in Barcelona")