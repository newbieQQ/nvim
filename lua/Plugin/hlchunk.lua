local G = require("G")

G.cmd([[
    " 支持哪些文件 默认为 '*.ts,*.js,*.json,*.go,*.c'
      let g:hlchunk_files = '*.ts,*.js,*.json,*.go,*.c'
    " 高亮颜色
      au VimEnter * hi IndentLineSign ctermfg=248
    " 延时 默认为50
      let g:hlchunk_time_delay = 50
    " 优先级 默认为90
      let g:hlchunk_priority = 90
    " 预设主题 默认为1
      let g:hlchunk_theme = 1
    " 用户自定义主题 默认无(用户设置后 以用户设置为主)
    " 格式: sign_texts: char[2][3], usenew: (0|1)[4] " [起止,中间]
      let g:hlchunk_theme_byuser = { 'sign_texts': ['╭─', '│ ', '╰>'], 'usenew': [1, 1, 1, 1] },
]])
