
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {
      'ruby',
      'toml',
      'c_sharp',
      'vue',
    }
  }
}
EOF
