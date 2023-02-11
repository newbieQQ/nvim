local G = require('G')

G.cmd([[
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['prettier']}
let g:ale_fix_on_save = 1
]])
