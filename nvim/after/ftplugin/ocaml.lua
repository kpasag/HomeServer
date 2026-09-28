vim.opt_local.expandtab = true
vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.softtabstop = 2

vim.keymap.set("n", "<leader>fc", function()
  local file = vim.api.nvim_buf_get_name(0)
  local src = table.concat(vim.api.nvim_buf_get_lines(0, 0, -1, false), "\n") .. "\n"
  local fmt = vim.fn.system(
    { "ocamlformat", "--enable-outside-detected-project", "--name", file, "-" },
    src
  )
  if vim.v.shell_error ~= 0 then
    vim.notify(fmt, vim.log.levels.ERROR)
    return
  end
  local diff = (vim.text and vim.text.diff or vim.diff)(src, fmt)
  if diff == "" then
    vim.notify("Formatting looks good", vim.log.levels.INFO)
    return
  end
  vim.cmd("vnew")
  vim.bo.buftype = "nofile"
  vim.bo.bufhidden = "wipe"
  vim.bo.filetype = "diff"
  vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(diff, "\n"))
end, { buffer = true, desc = "Check OCaml formatting" })
