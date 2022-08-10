-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/vincent/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/vincent/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/vincent/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/vincent/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/vincent/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n©\1\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\1K\0\1\0\foptions\1\0\0\1\0\4\22show_buffer_icons\1\20show_close_icon\1\29show_buffer_default_icon\1\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\4\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\0¿\tbody\15lsp_expandö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\tjump\rjumpable\21select_prev_item\fvisibleÈ\3\1\0\f\0!\0;6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0019\5\n\0059\5\v\0055\a\r\0009\b\t\0019\b\f\b)\n¸ˇB\b\2\2=\b\14\a9\b\t\0019\b\f\b)\n\4\0B\b\2\2=\b\15\a9\b\t\0019\b\16\bB\b\1\2=\b\17\a9\b\t\0019\b\18\b5\n\21\0009\v\19\0019\v\20\v=\v\22\nB\b\2\2=\b\23\a9\b\t\0013\n\24\0005\v\25\0B\b\3\2=\b\26\a9\b\t\0013\n\27\0005\v\28\0B\b\3\2=\b\29\aB\5\2\2=\5\t\0044\5\3\0005\6\30\0>\6\1\0055\6\31\0>\6\2\5=\5 \4B\2\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0" },
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\nR\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\1K\0\1\0\1\0\1\17line_mapping\bgcc\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint∆\a\1\2\t\0&\0ñ\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\0\0009\a\v\a9\a\f\a9\a\17\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0006\a\0\0009\a\v\a9\a\f\a9\a\19\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\20\0006\a\0\0009\a\v\a9\a\f\a9\a\21\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\22\0006\a\0\0009\a\v\a9\a\f\a9\a\23\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\24\0006\a\0\0009\a\v\a9\a\f\a9\a\25\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\26\0003\a\27\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\28\0006\a\0\0009\a\v\a9\a\f\a9\a\29\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\30\0006\a\0\0009\a\v\a9\a\f\a9\a\31\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6 \0006\a\0\0009\a\v\a9\a\f\a9\a!\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\"\0006\a\0\0009\a\v\a9\a\f\a9\a#\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6$\0006\a\0\0009\a\v\a9\a\f\a9\a%\a\18\b\2\0B\3\5\1K\0\1\0\15formatting\r<space>f\15references\agr\16code_action\14<space>ca\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim¶\4\1\0\b\0\29\0B6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0006\6\3\0009\6\b\0069\6\t\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\n\0006\6\3\0009\6\b\0069\6\v\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\f\0006\6\3\0009\6\b\0069\6\r\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\14\0006\6\3\0009\6\b\0069\6\15\6\18\a\1\0B\2\5\0013\2\16\0005\3\17\0006\4\3\0009\4\18\0049\4\19\0049\4\20\4B\4\1\0026\5\0\0'\a\21\0B\5\2\0029\5\22\5\18\a\4\0B\5\2\2\18\4\5\0009\5\23\0009\5\24\0055\a\25\0=\2\26\a=\3\27\a=\4\28\aB\5\2\1K\0\1\0\17capabilities\nflags\14on_attach\1\0\0\nsetup\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\1\0\1\26debounce_text_changes\3ñ\1\0\15setloclist\r<space>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\r<space>e\6n\bset\vkeymap\bvim\1\0\2\fnoremap\2\vsilent\2\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n≤\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\1\0\1\18adaptive_size\2\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nñ\2\0\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\rautopair\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\2\17auto_install\2\17sync_install\2\1\6\0\0\15typescript\15javascript\thtml\bcss\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { "\27LJ\2\nb\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0019\1\4\0B\1\1\1K\0\1\0\tload\1\0\2\16transparent\2\nstyle\nlight\nsetup\fonedark\frequire\0" },
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n_\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0009\4\4\1B\2\2\1K\0\1\0\fkeymaps\rregister\17core.keymaps\14which-key\frequire\0" },
    loaded = true,
    path = "/home/vincent/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\nR\0\0\4\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\1K\0\1\0\1\0\1\17line_mapping\bgcc\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprint∆\a\1\2\t\0&\0ñ\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\0\0009\a\v\a9\a\f\a9\a\17\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\18\0006\a\0\0009\a\v\a9\a\f\a9\a\19\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\20\0006\a\0\0009\a\v\a9\a\f\a9\a\21\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\22\0006\a\0\0009\a\v\a9\a\f\a9\a\23\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\24\0006\a\0\0009\a\v\a9\a\f\a9\a\25\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\26\0003\a\27\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\28\0006\a\0\0009\a\v\a9\a\f\a9\a\29\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\30\0006\a\0\0009\a\v\a9\a\f\a9\a\31\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6 \0006\a\0\0009\a\v\a9\a\f\a9\a!\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\"\0006\a\0\0009\a\v\a9\a\f\a9\a#\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6$\0006\a\0\0009\a\v\a9\a\f\a9\a%\a\18\b\2\0B\3\5\1K\0\1\0\15formatting\r<space>f\15references\agr\16code_action\14<space>ca\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\n<C-k>\19implementation\agi\nhover\6K\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim¶\4\1\0\b\0\29\0B6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0006\6\3\0009\6\b\0069\6\t\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\n\0006\6\3\0009\6\b\0069\6\v\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\f\0006\6\3\0009\6\b\0069\6\r\6\18\a\1\0B\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\14\0006\6\3\0009\6\b\0069\6\15\6\18\a\1\0B\2\5\0013\2\16\0005\3\17\0006\4\3\0009\4\18\0049\4\19\0049\4\20\4B\4\1\0026\5\0\0'\a\21\0B\5\2\0029\5\22\5\18\a\4\0B\5\2\2\18\4\5\0009\5\23\0009\5\24\0055\a\25\0=\2\26\a=\3\27\a=\4\28\aB\5\2\1K\0\1\0\17capabilities\nflags\14on_attach\1\0\0\nsetup\rtsserver\24update_capabilities\17cmp_nvim_lsp\29make_client_capabilities\rprotocol\blsp\1\0\1\26debounce_text_changes\3ñ\1\0\15setloclist\r<space>q\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\r<space>e\6n\bset\vkeymap\bvim\1\0\2\fnoremap\2\vsilent\2\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
try_loadstring("\27LJ\2\nb\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0B\1\2\0019\1\4\0B\1\1\1K\0\1\0\tload\1\0\2\16transparent\2\nstyle\nlight\nsetup\fonedark\frequire\0", "config", "onedark.nvim")
time([[Config for onedark.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n_\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0009\4\4\1B\2\2\1K\0\1\0\fkeymaps\rregister\17core.keymaps\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\4\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\1\2\0004\3\0\0B\1\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n≤\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\ffilters\1\0\1\rdotfiles\2\rrenderer\1\0\1\16group_empty\2\tview\1\0\1\18adaptive_size\2\1\0\1\fsort_by\19case_sensitive\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n©\1\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\1K\0\1\0\foptions\1\0\0\1\0\4\22show_buffer_icons\1\20show_close_icon\1\29show_buffer_default_icon\1\28show_buffer_close_icons\1\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nñ\2\0\0\4\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\fautotag\1\0\1\venable\2\rautopair\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\2\17auto_install\2\17sync_install\2\1\6\0\0\15typescript\15javascript\thtml\bcss\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\0¿\tbody\15lsp_expandö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\1¿\0¿\tjump\rjumpable\21select_prev_item\fvisibleÈ\3\1\0\f\0!\0;6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0019\5\n\0059\5\v\0055\a\r\0009\b\t\0019\b\f\b)\n¸ˇB\b\2\2=\b\14\a9\b\t\0019\b\f\b)\n\4\0B\b\2\2=\b\15\a9\b\t\0019\b\16\bB\b\1\2=\b\17\a9\b\t\0019\b\18\b5\n\21\0009\v\19\0019\v\20\v=\v\22\nB\b\2\2=\b\23\a9\b\t\0013\n\24\0005\v\25\0B\b\3\2=\b\26\a9\b\t\0013\n\27\0005\v\28\0B\b\3\2=\b\29\aB\5\2\2=\5\t\0044\5\3\0005\6\30\0>\6\1\0055\6\31\0>\6\2\5=\5 \4B\2\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\fluasnip\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
