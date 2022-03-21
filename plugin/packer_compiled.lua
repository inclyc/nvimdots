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
local package_path_str = "/home/lyc/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/lyc/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/lyc/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/lyc/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/lyc/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/lyc/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/lyc/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/lyc/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["vim-easymotion"] = {
    cond = { "\27LJ\2\n9\0\0\1\0\3\1\t6\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\2€+\0\1\0X\1\1€+\0\2\0L\0\2\0\vvscode\6g\bvim\2\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/lyc/.local/share/nvim/site/pack/packer/opt/vim-easymotion",
    url = "https://github.com/easymotion/vim-easymotion"
  },
  ["vim-easymotion-zh"] = {
    loaded = true,
    path = "/home/lyc/.local/share/nvim/site/pack/packer/start/vim-easymotion-zh",
    url = "https://github.com/zzhirong/vim-easymotion-zh"
  },
  vimtex = {
    loaded = true,
    path = "/home/lyc/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["vsc-easymotion"] = {
    cond = { "\27LJ\2\n9\0\0\1\0\3\1\t6\0\0\0009\0\1\0009\0\2\0\b\0\0\0X\0\2€+\0\1\0X\1\1€+\0\2\0L\0\2\0\vvscode\6g\bvim\2\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/lyc/.local/share/nvim/site/pack/packer/opt/vsc-easymotion",
    url = "https://github.com/asvetliakov/vim-easymotion"
  }
}

time([[Defining packer_plugins]], false)
-- Conditional loads
time([[Conditional loading of vsc-easymotion]], true)
  require("packer.load")({"vsc-easymotion"}, {}, _G.packer_plugins)
time([[Conditional loading of vsc-easymotion]], false)
time([[Conditional loading of vim-easymotion]], true)
  require("packer.load")({"vim-easymotion"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-easymotion]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
