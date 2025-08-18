return function ()
	local text = "Texto de prueba"
	vim.api.nvim_buf_set_lines(0, -1, -1, true, {text})
end
