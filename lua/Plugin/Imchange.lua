if package.config:sub(1,1) == "\\" then
  return
end

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

function Is_fcitx5_installed()
    local cmd = "fcitx5 -v"
    local status = os.execute(cmd)
    return (status == 0)
end

if Is_fcitx5_installed() then
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
end


