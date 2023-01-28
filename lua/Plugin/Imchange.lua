local G, im = require("G"), "keyboard-us"

function InsertLeave()
  local t = io.popen("fcitx5-remote -n")
  im = t:read()
  G.cmd(":silent !fcitx5-remote -c")
end

function InsertEnter()
  if im == 'pinyin'
  then
    G.cmd(":silent !fcitx5-remote -s pinyin")
  end
end

G.api.nvim_create_autocmd(
  {"InsertLeave"}, {
    pattern = "*",
    callback = InsertLeave
  }
)

G.api.nvim_create_autocmd(
  {"InsertEnter"}, {
    pattern = "*",
    callback = InsertEnter
  }
)
