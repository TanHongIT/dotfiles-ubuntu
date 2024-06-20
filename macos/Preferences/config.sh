#!/bin/bash

# For Path: /Libraries/Preferences/

# ===================== Finder ===================== #
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ContainerShowSidebar -bool true
defaults write com.apple.finder ShowToolbar -bool true
defaults write com.apple.finder ShowSidebar -bool true
defaults write com.apple.finder ShowPreviewPane -bool true
defaults write com.apple.finder ShowTabView -bool true
defaults write com.apple.finder ShowRecentTags -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv" # Nlsv, clmv, Flwv, icnv (This is the icon view)
defaults write com.apple.finder FXPreferredSearchViewStyle -string "Nlsv"
defaults write com.apple.finder FXPreferredGroupBy -string "Kind"
defaults write com.apple.finder FXPreferredSortBy -string "Name"

# when performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# remove items from the trash after 30 days
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

# show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# show warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool true

killall Finder

# ===================== Dock ===================== #
# defaults read com.apple.dock
defaults write com.apple.dock autohide -bool false
defaults write com.apple.dock expose-group-apps -bool false
defaults write com.apple.dock largesize -float 60
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock mineffect -string "genie"
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock orientation -string "bottom"
defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock showAppExposeGestureEnabled -bool true
defaults write com.apple.dock tilesize -float 45
defaults write com.apple.dock trash-full -bool true
defaults write com.apple.dock wvous-bl-corner -int 2
defaults write com.apple.dock wvous-bl-modifier -int 0
defaults write com.apple.dock wvous-br-corner -int 14
defaults write com.apple.dock wvous-tl-corner -int 1
defaults write com.apple.dock wvous-tl-modifier -int 0
defaults write com.apple.dock wvous-tr-corner -int 1
defaults write com.apple.dock wvous-tr-modifier -int 1048576
defaults write com.apple.dock workspaces-swoosh-animation-off -bool false

# group windows by application in Mission Control
defaults write com.apple.dock expose-group-by-app -bool false

# double-click a window's title bar to minimize
defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Do Nothing"

killall Dock

# ===================== Maccy ===================== #
# Maccy is a clipboard manager for macOS
# defaults read org.p0deje.Maccy
if [[ -d "/Applications/Maccy.app" ]]; then
    defaults write org.p0deje.Maccy historySize -int 999
    defaults write org.p0deje.Maccy menuIcon clipboard
    defaults write org.p0deje.Maccy sortBy lastCopiedAt
    defaults write org.p0deje.Maccy showSpecialSymbols -int 1
    defaults write org.p0deje.Maccy popupPosition cursor
    defaults write org.p0deje.Maccy hideFooter -int 0
    defaults write org.p0deje.Maccy hideSearch -int 0
    defaults write org.p0deje.Maccy hideTitle -int 0
    echo "Maccy is configured"
fi

# ===================== Rectangle ===================== #
# Rectangle is a window management app for macOS
# defaults read com.knollsoft.Rectangle
if [[ -d "/Applications/KeepingYouAwake.app" ]]; then
    defaults write com.knollsoft.Rectangle SUEnableAutomaticChecks -int 1
    defaults write com.knollsoft.Rectangle SUHasLaunchedBefore -int 1
    defaults write com.knollsoft.Rectangle SUHasLaunchedSinceUpdate -int 1
    defaults write com.knollsoft.Rectangle launchOnLogin -int 1
    defaults write com.knollsoft.Rectangle hideMenubarIcon -int 0
    defaults write com.knollsoft.Rectangle moveCursorAcrossDisplays -int 1
    defaults write com.knollsoft.Rectangle doubleClickTitleBar -int 3
    defaults write com.knollsoft.Rectangle allowAnyShortcut -int 1
    defaults write com.knollsoft.Rectangle alternateDefaultShortcuts -int 1
fi

# ===================== keepyouawake ===================== #
# keepyouawake is a menu bar app to prevent your Mac from going to sleep
# defaults read info.marcel-dierkes.KeepingYouAwake
if [[ -d "/Applications/KeepingYouAwake.app" ]]; then
    defaults write info.marcel-dierkes.KeepingYouAwake SUEnableAutomaticChecks -int 1
    defaults write info.marcel-dierkes.KeepingYouAwake SUHasLaunchedBefore -int 1
    defaults write info.marcel-dierkes.KeepingYouAwake "info.marcel-dierkes.KeepingYouAwake.BatteryCapacityThreshold" -int 25
    defaults write info.marcel-dierkes.KeepingYouAwake "info.marcel-dierkes.KeepingYouAwake.BatteryCapacityThresholdEnabled" -int 1
    defaults write info.marcel-dierkes.KeepingYouAwake "info.marcel-dierkes.KeepingYouAwake.LowPowerModeMonitoringEnabled" -int 1
    killall KeepingYouAwake
fi

# ===================== iTerm2 ===================== #
# iTerm2 is a terminal emulator for macOS
# defaults read com.googlecode.iterm2
if [[ -d "/Applications/iTerm.app" ]]; then
    defaults write com.googlecode.iterm2 PrefsCustomFolder -string "${HOME}/.config/iterm2"
    defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -int 1
    defaults write com.googlecode.iterm2 HideScrollbar -int 1
    defaults write com.googlecode.iterm2 SUAutomaticallyUpdate -int 1
    defaults write com.googlecode.iterm2 SUEnableAutomaticChecks -int 1
    defaults write com.googlecode.iterm2 SUHasLaunchedBefore -int 1
    echo "iTerm2 is configured"
fi

# ===================== ScreenShot ===================== #
# ScreenShot is a screen capture tool for macOS
# defaults read com.apple.screencapture

mkdir -p "${HOME}/Pictures/Screenshots"

# shellcheck disable=SC2088
defaults write com.apple.screencapture location -string "~/Pictures/Screenshots"
# shellcheck disable=SC2088
defaults write com.apple.screencapture location-last -string "~/Pictures/Screenshots"

defaults write com.apple.screencapture type "png"
defaults write com.apple.screencapture disable-shadow -int 1
defaults write com.apple.screencapture show-thumbnail -int 1
defaults write com.apple.screencapture include-date -bool true
defaults write com.apple.screencapture show-include-date -bool true
defaults write com.apple.screencapture showsClicks -int 1
defaults write com.apple.screencapture showCursor -int 1

defaults write com.apple.screencapture target clipboard # file, clipboard, preview, mail, printer

# ===================== TextEdit ===================== #
# TextEdit is a simple text editor included with macOS
# defaults read com.apple.TextEdit
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4
defaults write com.apple.TextEdit ShowRuler -int 1

# ===================== preferences ===================== #
# defaults read NSGlobalDomain
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true
defaults write NSGlobalDomain AppleICUForce24HourTime -bool true
defaults write NSGlobalDomain AppleFirstWeekday -dict gregorian 2
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool false
defaults write NSGlobalDomain AppleTemperatureUnit -string "Celsius"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool true # Smart dashes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool true # Smart quotes
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool true
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSCloseAlwaysConfirmsChanges -bool true
defaults write NSGlobalDomain NSSpellCheckerAutomaticallyIdentifiesLanguages -bool true