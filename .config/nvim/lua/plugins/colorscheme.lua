return {
	"felipefdl/warm-burnout",
	priority = 1000,
	config = function(plugin)
		vim.opt.rtp:append(plugin.dir .. "/nvim")
		vim.cmd.colorscheme("warm-burnout-dark")
	end,
}
