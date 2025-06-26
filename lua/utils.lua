-- lua/utils.lua
local M = {}

function M.load(folder)
  local path = vim.fn.stdpath("config") .. "/lua/" .. folder
  local files = vim.fn.readdir(path)

  for _, file in ipairs(files) do
    if file:sub(-4) == ".lua" and file ~= "init.lua" then
      local module = folder:gsub("/", ".") .. "." .. file:gsub("%.lua$", "")
      pcall(require, module) -- safely require to avoid crashing on errors
    end
  end
end

return M
