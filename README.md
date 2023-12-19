# My dotfiles

Colors are legitemely stolen from [navarasu/onedark.nvim's palette][palette].

Programs that're configured here:
- bash
- [dmenu][dmenu]
- [i3][i3]
- [i3blocks][i3blocks]
- [st][st]
- [nvim][nvim]

Programs configs depend on:
- The [`dmenu_pass`](/.local/bin/dmenu_pass) script in
  [`/.local/bin`](/.local/bin). This is just the [`dmenu_pass`][dmenu-pass]
  script listed on [dmenu's scripts page][dmenu-scripts] with a few changes to
  make it display notifications on errors and successful clipboard writes.
- [bemoji][bemoji]
- And [boomer][boomer]. Allows you to zoom into and highlight something. Really
  handy during a stream
- [flameshot][flameshot]
- [ungoogled chromium][chromium]

[palette]: https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua#L142-L169

[dmenu]: https://tools.suckless.org/dmenu/
[i3]: https://i3wm.org/
[i3blocks]: https://github.com/vivien/i3blocks
[st]: https://st.suckless.org/
[nvim]: https://neovim.io/

[dmenu-pass]: https://efe.kim/files/scripts/dmenu_pass
[dmenu-scripts]: https://tools.suckless.org/dmenu/scripts/
[bemoji]: https://github.com/marty-oehme/bemoji
[boomer]: https://github.com/tsoding/boomer
[flameshot]: https://flameshot.org/
[chromium]: https://ungoogled-software.github.io/ungoogled-chromium-binaries/
