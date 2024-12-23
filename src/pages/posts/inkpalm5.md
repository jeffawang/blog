---
layout: '../../components/MarkdownLayout.astro'
title: 'Setting up my Inkpalm 5'
pubDate: 2024-12-23
description: 'Setting up my Inkpalm 5'
author: 'jeff'
tags: ["ereader", "inkpalm5"]
---

![](/static/inkpalm5.jpeg)

A few months ago, I picked up an Inkpalm 5 from ebay with the intention of carrying it every day instead of my phone.

It's about the same size and shape as a phone, and it's remarkably lighter in weight. Now, when I would reach for my phone, I pick up this ereader. This has been great so far! However, it didn't come out of the box quite like I wanted it. This post goes over some of the things I added and removed from the device to get it to be the minimal e-reader that I wanted it to be.

This post goes over:

* [Installing adb](#adb)
* [Uninstalling bloat](#uninstalling-bloat)
* [The apps I use](#apps-unlauncher-anysoftkeyboard-koreader-einkbro-and-little-file-explorer)
* [Managing books](#managing-books)
* [Changing the lock screen wallpaper](#changing-the-lock-screen-wallpaper)

## adb

adb is the Android Debug Bridge, a command-line tool that lets you communicate the Android device. For this project, adb serves as a quick way to remove apps from the Inkpalm and to install new apps from `.apk` files.

I happen to be using macOS with brew at the moment, so I installed the `adb` command by running `brew install android-platform-tools`.

For `adb` to work with the Inkpalm, I also had to enable USB debugging:

1. Go to Settings > About Device
2. Tap the `Build Number` field 7 times. This enables developer mode.
3. Go to the newly accessible Settings > Developer Options. For me it's in Chinese text with a wrench icon.
4. Scroll down to the Debugging section and enable USB debugging "Debug mode when USB is connected" option.

To test, plug in the device with its USB-C port to your computer. After a few seconds, you should get a prompt asking how to use the USB. Select the "Transferring files" option by clicking the circle next to it. This will make the device enter MTP mode.

On the connected computer, run `adb devices` in a terminal to make sure that things are working. If so, then congrats, you're a developer!

### Uninstalling bloat

Since I wanted to just use the device as a relatively simple e-reader, I removed many of the things that came installed on the device. I did end up replacing some of the apps with similar apps that I prefer and are more open source.

To do so, I ran the `adb shell` command. This starts an interactive prompt for interacting with the device with adb. For me, it starts a prompt that looks like this: `virgo-perf1:/ $ `.

Once the shell is running, you can use some commands to uninstall apps. Below is all the stuff I removed. I'd recommend reading all the commands here and making sure that each of the packages is one you want to remove!

```
virgo-perf1:/ $ pm uninstall --user 0 com.moan.appstore
virgo-perf1:/ $ pm uninstall --user 0 com.moan.browser
virgo-perf1:/ $ pm uninstall --user 0 com.duokan.einkreader
virgo-perf1:/ $ pm uninstall --user 0 com.zhangyue.read.iReader.eink
virgo-perf1:/ $ pm uninstall --user 0 com.moan.sdmanage
virgo-perf1:/ $ pm uninstall --user 0 cn.wps.moffice_eng.lite
virgo-perf1:/ $ pm uninstall --user 0 com.softwinner.dragonaging
virgo-perf1:/ $ pm uninstall --user 0 com.softwinner.dragonfire
virgo-perf1:/ $ pm uninstall --user 0 com.android.email
virgo-perf1:/ $ pm uninstall --user 0 com.amazon.kindlefc
virgo-perf1:/ $ pm uninstall --user 0 com.jd.app.reader
virgo-perf1:/ $ pm uninstall --user 0 com.netease.snailread.ink
virgo-perf1:/ $ pm uninstall --user 0 com.tencent.weread.eink
```

### Install F-Droid

F-droid is an android app catalog for free and open source software. I feel very appreciative of everyone who maintains a FOSS project!

To install it, I used the apk from online:

1. Download F-Droid.apk from https://f-droid.org/en/
2. Install F-Droid by running `adb install F-Droid.apk` from your downloads directory

After unplugging your device from USB, it will exit MTP mode, and you should see the F-Droid app in the launcher.

### Apps: Unlauncher, AnySoftKeyboard, KOReader, EinkBro, and Little File Explorer

To install stuff with F-Droid, you will need to connect the device to wifi by swiping down from the top of the screen and tapping and holding the wifi icon. And when you launch F-Droid, it will update repositories. The Inkpalm also will make sure you want to install things from there with a prompt. Enable it by clicking "Allow from this source".

#### Unlauncher

Unlauncher is the minimal app launcher for Android that I prefer. The Inkpalm 5 does not seem to support backgrounds, and many launchers would give me unusable fully black screens because they were meant for android phones rather than limited e-readers like the Inkpalm.

With Unlauncher, you can configure a minimal set of apps to show on the home screen, and you can always access an app drawer by swiping up. KOReader is the one app on my home screen.

I think it would technically be possible to remove the original app launcher, but I keep it around just in case I need it. In any case, it's not on my Unlauncher apps

#### AnySoftKeyboard

AnySoftKeyboard is a pretty basic Android keyboard that I use. I don't need anything fancy, and the default one asked for a network permissions, which made me suspicious of it.

After installing this keyboard and making it the default, I uninstalled the old input method via adb with `pm uninstall --user 0 com.sohu.inputmethod.sogou.oem`.

#### KOReader

KOReader is the only app I have on my Unlauncher homescreen.

It is highly configurable, and it supports changing the page via tapping on sections of the screen, swiping left and right, and the volume buttons. It also has a file browser that makes sense to me, and it supports looking up words in a configurable set of dictionaries.

I ended up spent a couple hours browsing through the options and getting it to a configuration that I like. Maybe I'll make a post about this in the future.

#### EinkBro

EinkBro is a web browser for eink devices. I have it installed on my Inkpalm for emergencies, but I keep it off my main screen to avoid distraction.

#### Little File Explorer

Little File Explorer is exactly what its name suggests. Especially as I was testing out different e-reader apps, I wanted a way to look at files quickly and simply. These days, I don't find much need for it and just use the KOReader file management.

## Managing books

To manage ebooks on the Inkpalm, I use Calibre. Connect the device over USB, setting it to File Transfer mode. Calibre can detect it and send files to the device, much like it would do with other commercial e-readers.

## Changing the lock screen wallpaper

To change the lock screen wallpaper, upload an image to the device with `adb`.

1. Upload an image by running `adb push <filename> /storage/emulated/0/Wallpaper/<filename>`
   1. For example, to upload a file called `rind.png`, run `adb push rind.png /storage/emulated/0/Wallpaper/rind.png`
2. Use the oem settings app to change the wallpaper
   1. From the Unlauncher app drawer, run the original Launcher
   2. Tap Settings (which has a hardware nut icon)
   3. Go to Device Settings > Wallpaper
   4. Select a wallpaper. The image you uploaded should be there.
