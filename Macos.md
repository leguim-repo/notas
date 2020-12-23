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

This is valid for unix systems too  

---
<!-- Pit i Collons -->
<img src="https://raw.githubusercontent.com/leguim-repo/leguim-repo/master/img/codedinbcn.png" witdh="109px" alt="Coded in Barcelona"/>
