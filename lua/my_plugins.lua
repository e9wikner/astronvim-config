return {
  { "github/copilot.vim" },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for rest
    },
    -- See Commands section for default commands if you want to lazy load on them
    keys = {
      { "<leader>zc", "<cmd>CopilotChat<cr>", desc = "Copilot Chat" },
      { "<leader>zx", "<cmd>CopilotChatClose<cr>", desc = "Copilot Chat Close" },
      { "<leader>zC", "<cmd>CopilotChat --context<cr>", desc = "Copilot Chat with Context" },
      { "<leader>ze", "<cmd>CopilotChatExplain<cr>", mode = "v", desc = "Copilot Chat Explain" },
      { "<leader>zr", "<cmd>CopilotChatReview<cr>", mode = "v", desc = "Copilot Chat Review" },
      { "<leader>zo", "<cmd>CopilotChatOptimize<cr>", mode = "v", desc = "Copilot Chat Optimize" },
      { "<leader>zf", "<cmd>CopilotChatFix<cr>", mode = "v", desc = "Copilot Chat Fix" },
      { "<leader>zd", "<cmd>CopilotChatDocs<cr>", mode = "v", desc = "Copilot Chat Docs" },
    },
  },
}
