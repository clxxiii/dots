return {
  'iamt4nk/smm.nvim',
  dependencies = {
    "nvim-lua/plenary.nvim",
	  "nvim-telescope/telescope.nvim",
  },
  config = {
    premium = true,
    icons = true,

    spotify = {
      api_retry_max = 3,
      api_retry_backoff = 2000,

      auth = {
        client_id = "171a225176894d5986df534d8ec951b6",
        callback_url = "http://localhost",
        callback_port = 4202,
      }
    }
  },
  keys = {
    { "<leader>ss", "<CMD>Spotify<CR>", desc = "Show Spotify" },
    { "<leader>sp", "<CMD>Spotify prev<CR>", desc = "Previous Song (spotify)" },
    { "<leader>sn", "<CMD>Spotify next<CR>", desc = "Next Song (spotify)" },
    { "<leader>sR", "<CMD>Spotify repeat<CR>", desc = "Toggle Repeat (spotify)" },
    { "<leader>sS", "<CMD>Spotify shuffle<CR>", desc = "Toggle Shuffle (spotify)" }
  }
}
