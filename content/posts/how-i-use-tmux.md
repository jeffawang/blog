---
title: "How I Use tmux"
date: 2018-03-27T14:19:09-07:00
type: post
draft: false
tags: ["tmux", "terminal", "dev", "macos", "windows", "wsl"]
---

![](/images/tmux/donkeysay.gif)

This post explores a bit about integrating tmux into my workflow on MacOS and the Windows Subsystem for Linux.

Over time, I've built up a set of configurations that work well together for me. Because they're in [a git repo](https://github.com/jeffawang/dotfiles), they're available anywhere I can access github, and I can track any changes I make immediately.

Instead, I'd recommend picking and choosing a few things at a time to add, so that there's time to get used to any new changes. I'm a firm believer in knowing exactly what's my dotfiles, and choices that worked for me might not work for anyone else.

#### Contents:

- [Terminal Emulators](#terminal-emulators)
  - [Windows: WSL(Ubuntu) + ConEmu](#wsl-conemu)
  - [MacOS: iTerm2](#macos-iterm2)
- [Installation](#installation)
- [The tmux Prefix Key](#tmux-prefix)
- [Some Nice Custom tmux Key Bindings](#tmux-keybinds)

Terminal Emulators<a name="terminal-emulators"></a>
---

One key feature I look for in Mac/Windows terminal emulators is the ability to create custom keybindings/macros.

Ideally, the keybind system can send multiple key chords in series, so that I can combine tmux multi-chord keybinds into one. For example, in iTerm2, I've set `⌘J` to send `C-\` and then `J`, so that I can use the one chord to switch windows.

For sufferers of RSI and carpal tunnel, this is a relief. Plus, by doing half the keystrokes and not having to move off the home-row, it's more than twice as fast than using two-chord bindings.

Furthermore, because it's just sending the character codes to the terminal, the same keybindings can be used in a tmux session accessed through ssh.

Windows: WSL(Ubuntu) + ConEmu<a name="wsl-conemu"></a>
---

On Windows, I use [ConEmu](https://conemu.github.io/) as a terminal emulator. This is because the default terminal emulator that comes with WSL doesn't support custom keybindings.

<img src="/images/tmux/conemu_tmux.png" style="border-radius: 0" alt="tmux, ConEmu, and WSL together"/>

I like this setup because it's very similar to what I have on MacOS (as described in the next section). This greatly reduces the context switch when moving between Windows desktop and Macbook.

Since ConEmu isn't just for WSL, I had to [set up a bash task](/images/tmux/conemu_bash_task.png), then update the ConEmu startup task to use it.

Then, I was able to set up macros, similar to keybindings I had in iTerm2.

<img src="/images/tmux/conemu_settings.png" style="border-radius: 0" alt="ConEmu can support up to 32 macros"/>

So far, this has worked out. Just like I'm able to use `⌘J` on MacOS to go to the next tmux window, I can use `Alt-J` on Windows to do the same.

One caveat is that ConEmu only supports having 32 macros. This is enough for me at the moment, but if I need more in the future, I may look into something like AutoHotkey.

MacOS: iTerm2<a name="macos-iterm2"></a>
---

For MacOS, I chose iTerm2 because it's able to send a series of hex codes to the terminal via a keybind. Again, if I am using tmux through ssh, I can still use the keybindings, as if tmux were running locally.

Setting up the keybinds is not the most straightforward process. In the iTerm2 Settings > Profiles > Keys, I added new keybindings with the "+" button. And in the dialog dropdown, I chose "Send Hex Code." There, I typed in the keybinding.

For example, sending `C-\` then `d`, the key binding is `0x1C 0x64`.

After setting these up, I'm able to do things like press `⌘J` to switch to the next tmux window and `⌘K` to switch to the previous window

![Custom keybinds combine key chords](/images/tmux/iterm2_settings.png)

As a note, `man ascii` shows the octal, hex, and decimal versions of ascii characters and proved immensely useful for setting up the tmux-iTerm2 mapping.

![An excerpt of `man ascii`](/images/tmux/ascii_hex.png)

Installation<a name="installation"></a>
---

When I'm at the keyboard of a new computer, I want to be able to get up and running as fast as possible, so I created a simple install script.  This worked well on Mac and WSL Ubuntu, as well as plain ol' Ubuntu.

Primarily, it sets up symlinks to my config files in the right places.

![The script sets up symlinks pointed to my dotfiles repo.](/images/tmux/install_script.png)

Because the config files are symlinks to the dotfiles repo, any changes I make are immediately tracked in git; I can commit them right away, or if it stops working, I can revert.

The tmux Prefix Key<a name="tmux-prefix"></a>
---

Right now, I'm using `C-\` as a prefix. In bash, it's used for sending SIGQUIT. I never really find myself doing this, and if I need it, I'll be okay with pressing `C-\` twice.

These are some of the prefix keys I considered.

| tmux Prefix | My assessment                                                                                                                                                 |
| ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `C-\`       | My current prefix. It sends SIGQUIT in bash, but I never really used that.                                                                                    |
| `C-b`       | The default prefix. I use this to go back one character in bash.                                                                                              |
| `C-a`       | screen's default prefix. I use this to go back to the start of the line in bash.                                                                              |
| `C-o`       | The `vim-go` plugin uses `C-x C-o` for completion. In bash, it is "operate-and-get-next", which I never really used.                                          |
| `C-space`   | The Windows terminal emulators I tried didn't support this. Also, I think this does something for emacs users.                                                |
| `` ` ``     | This (backtick) is useful for literal strings in go, writing markdown, and bash subshells (though I normally use `$()`)                                       |

My Favorite Custom Tmux Key Bindings<a name="tmux-keybinds"></a>
---

Some tmux keybindings I use *a lot*. After getting them in my muscle memory, they feel very natural, especially since they don't require two chords anymore.

You can all of see them in my [`tmux.conf`](https://github.com/jeffawang/dotfiles/blob/master/tmux.conf). Here are some of them:

| iTerm2 | tmux | effect |
|--------|------|--------|
| `⌘t` | `t` | new window |
| <code>⌘\|</code>| <code>\|</code> | vertical split pane |
| `⌘_` | `_` | horizontal split pane |
| `⌘j` / `⌘]` | `j` | next pane |
| `⌘k` / `⌘[` | `k` | previous pane |
| `⌘J` / `⌘}` | `J` | next window |
| `⌘K` / `⌘{` | `K` | previous window |
| `⌘w` | `w` | close window |
| `⌘d` | `d` | detach from tmux |
| `⌘m` | `m` | open man page tmux prompt |
| `⌘g` | `g` | enter tmux copy mode |
| `⌘p` | `p` | paste last tmux copy-buffer |
| `⌘P` | `P` | prompt which tmux copy-buffer to paste |
| `⌘:` | `:` | tmux command-line prompt |
| `⌘↑Enter` | `x` | toggle maximize tmux pane |

In Conclusion
---

By now, `tmux` has become one of my favorite terminal tools, as is probably obvious from the length of this post. By taking a couple steps to integrate it slightly deeper into my workflows, I've been able to reduce context switching when moving between setups.

I hope this was helpful and informative. Happy tmuxin'!
