lua << EOF
  require("which-key").setup{
  nowait = true,
  plugins = {
    presets ={
      operators = false,
      motions = false,
      text_objects = false,
      windows = false,
      nav = false,
      }
    }
}
EOF
