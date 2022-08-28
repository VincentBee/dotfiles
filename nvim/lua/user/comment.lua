local status_ok, nvimComment = pcall(require, "nvim_comment")
if not status_ok then
  return
end

nvimComment.setup({
  line_mapping = 'gcc',
})
