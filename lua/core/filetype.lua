local G = require("G")

G.api.nvim_create_autocmd( {"FileType"}, {
    pattern = "markdown",
    callback = function()
      require('Filetype.markdown')
      --G.cmd('MarkdownPreview')
    end
  }
)

G.api.nvim_create_autocmd( {"FileType"}, {
    pattern = {"c", "cpp"},
    callback = function()
      require('Filetype.c')
    end
  }
)

G.api.nvim_create_autocmd( {"FileType"}, {
    pattern = "vue",
    callback = function()
      require('Filetype.vue')
    end
  }
)
