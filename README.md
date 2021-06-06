# dotfiles
Configuration for my machine


Date format: %a %b %e, %I:%M

## Manual Steps
- [ ] Setup SSH keys on [GitHub](https://github.com/settings/keys)
- [ ] Chrome
- [ ] Slack
- [ ] Skype
- [ ] Zoom
- [ ] Anki
- [ ] [Jetbrains Toolbox + Pycharm](https://www.jetbrains.com/toolbox-app/)
- [ ] [Postman](https://app.getpostman.com/app/download/linux64)
- [ ] [Miniconda](https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html#install-linux-silent)
- [ ] Set keyboard shortcuts
- [ ] Setup [Autojump](https://www.linode.com/docs/tools-reference/tools/faster-file-navigation-with-autojump/#debian-ubuntu)
- [ ] Setup Yakuake theme: https://store.kde.org/p/1106258/  
- [ ] Setup Yakuake open link in google: https://askubuntu.com/questions/62182/how-do-i-change-the-default-browser-that-konsole-opens-urls-with
- [ ] Set yakuake on startup applications
- [ ] Install hosts file: [hosts](https://github.com/StevenBlack/hosts) or [adsorber](https://github.com/stablestud/adsorber#portable-mode)
- [ ] Install fzf: https://github.com/junegunn/fzf
```shell
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
cd ~/.fzf/
./install
```
- [ ] [Change docstring style in Pycharm](https://intellij-support.jetbrains.com/hc/en-us/community/posts/115000784410-how-to-change-pycharm-default-commenting-style-for-function-)
- [ ] Add to ~/.bashrc
```
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi
```
- Clone `scripts` to home
- Sync VSCode settings via git
- Set preferred applications

## Repetitive steps
- Create bootable ISO: [etcher](https://github.com/balena-io/etcher)
- Custom disk partition in linux mint installation: [video](https://youtu.be/Nps2RF8fq18)
- Perform mintupdate
- [Create Icon for Postman App](https://medium.com/@canoodle/adding-icon-launcher-for-postman-native-app-in-ubuntu-a48a3917c786)
- [Fix keyboard layout getting reset to Nepali](https://forums.linuxmint.com/viewtopic.php?f=208&t=169930#p873888)
- Install hub: https://github.com/github/hub

## VSCode
- Set `window.titleBarStyle": "custom"` to use VSCode themed title bar
- Change `Workbench > Tree: Indent` from 8 to 20.

## Repeated commands

## Custom Keyboard Shortcuts
|Command | Shortcut|
|---|---|
|xkill|Ctrl + Alt + X|
|code|Ctrl + Alt + M|
|xset dpms force off|Ctrl + Alt + J|
|shutdown -h now|Ctrl + Alt + K|
|shutdown -r now|Ctrl + Alt + R|
|google-chrome|Ctrl + Alt + C|
|daily.py|Ctrl + Alt + D|
|weekend.py|Ctrl + Shift + W|
|xed|Ctrl + Alt + G|
|office.py|Ctrl + Shift + Q|


## Articles
01. [Install TLP to save battery life](http://linrunner.de/en/tlp/docs/tlp-faq.html)

02. [Disable AMD Driver](#) 
 * http://www.mostthingsweb.com/2014/07/disable-radeon-power-management-newer-linux-kernels/ 
 * http://askubuntu.com/questions/96983/how-to-completely-shutdown-ati-card
 * http://forums.fedoraforum.org/archive/index.php/t-290649.html

03. [Disable problem detected popup at startup](http://askubuntu.com/questions/133385/getting-system-program-problem-detected-pops-up-regularly-after-upgrade)

04. [Save Brightness Settings on Startup](http://askubuntu.com/questions/151651/brightness-is-reset-to-maximum-on-every-restart/227553#227553)

05. [Add shutdown keyboard shortcut](https://amitness.com/ubuntu-keyboard-shortcut#ubuntu-keyboard-shortcut)

06. [Make desktop icon more visible in Cinnamon](http://forums.fedoraforum.org/showthread.php?t=300371)

07. [Disable Ads using hosts file](http://winhelp2002.mvps.org/hosts.txt)

08. [Install youtube-dl to download videos](https://rg3.github.io/youtube-dl/download.html)

09. [Make pomodoro timer in bash script](http://superuser.com/questions/224265/pomodoro-timer-for-linux)

10. [Make GIMP Behave like Photoshop](http://www.noobslab.com/2014/03/give-new-looks-to-gimp-image-editor.html)

11. [Add Playback position resume in VLC](http://www.webupd8.org/2014/07/make-vlc-automatically-save-restore.html)

12. [Create Permanent Aliases in Terminal](http://askubuntu.com/a/17538)

13. [Fix VLC doesn't support hevc format files](http://www.unixmen.com/fix-vlc-not-support-audio-video-format-hevc/)

14. [Make Gimp Behave like Photoshop](http://www.noobslab.com/2014/03/give-new-looks-to-gimp-image-editor.html)

15. [Show 12hr clock format in custom date/time](http://forums.linuxmint.com/viewtopic.php?f=208&t=92900#p532984)

16. [Hide the volume popup](http://forums.linuxmint.com/viewtopic.php?f=206&t=145722)

17. [Install JAVA on Linux](http://community.linuxmint.com/tutorial/view/1372)

18. [Use default linux terminal for Codeblocks IDE](http://ubuntuforums.org/showthread.php?t=1464940)

19. [Make Bash Aliases permanent](http://askubuntu.com/questions/17536/how-do-i-create-a-permanent-bash-alias) 

20. [Fix for bash error when alias points to command containing quotes](http://stackoverflow.com/questions/1250079/how-to-escape-single-quotes-within-single-quoted-strings)

21. [Replace cinnamon with mate DE](https://www.reddit.com/r/linux/comments/29x2gs/mint_17_how_does_one_replace_cinamon_with_mate/) 

22. [Auto-text completion for Gedit](https://github.com/nymanjens/gedit-intelligent-text-completion)

23. [Make filezilla open editor in gedit](http://superuser.com/questions/159846/change-filezilla-settings-in-ubuntu-linux-so-view-edit-uses-gedit) 

24. [Change Sudo Timeout](http://itsfoss.com/change-sudo-password-timeout-ubuntu/)

25. Fix Nvidia driver issues after upgrade: https://bugs.launchpad.net/ubuntu/+source/nvidia-graphics-drivers-435/+bug/1888617
