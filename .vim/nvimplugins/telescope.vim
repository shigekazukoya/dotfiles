noremap th <cmd>Telescope oldfiles<cr>
nnoremap <Leader>ff <cmd>lua require'telescope.builtin'.find_files{ cwd = "~/", find_command = {"rg", "--follow", "--files", "--glob=!*.{git,lnk}"}}<CR>
nnoremap <Leader>grep <cmd>lua require'telescope.builtin'.live_grep{find_command = {"rg", "--hidden", "--follow","--glob=!*.{git,lnk}"}}<CR>
nnoremap <Leader>dot <cmd>lua require'telescope.builtin'.find_files{ cwd = "~/dotfiles/", find_command = {"rg","--files", "--hidden", "--glob=!.git/*"}}<CR>
nnoremap <leader>buf <cmd>Telescope buffers<cr>
nnoremap <leader><C-r> <cmd>Telescope buffers<cr>

function Set_telescope()
  highlight TelescopeSelection      guifg=#4883d5 gui=bold " selected item
  highlight TelescopeSelectionCaret guifg=#CC241D " selection caret
  highlight TelescopeMultiSelection guifg=#928374 " multisections
  highlight TelescopeNormal         guibg=#00000  " floating windows created by telescope.

  " Border highlight groups.
  highlight TelescopeBorder         guifg=#ffffff
  highlight TelescopePromptBorder   guifg=#ffffff
  highlight TelescopeResultsBorder  guifg=#ffffff
  highlight TelescopePreviewBorder  guifg=#ffffff

  " Used for highlighting characters that you match.
  highlight TelescopeMatching       guifg=#ff368f

  " Used for the prompt prefix
  highlight TelescopePromptPrefix   guifg=red
endfunc

lua <<EOF
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_position = "bottom",
    prompt_prefix = " ",
    selection_caret = "→ ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_defaults = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 20,
    width = 0.75,
    preview= true,
    preview_cutoff = 120,
    results_height = 1,
    results_width = 0.8,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = false,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
  }
}
EOF
