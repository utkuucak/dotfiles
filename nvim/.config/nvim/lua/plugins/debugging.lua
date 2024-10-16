return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")

      require("dapui").setup()

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      dap.configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Launch this file",
          program = "${file}",
        },
      }

      vim.keymap.set("n", "<Leader>b", function()
        dap.toggle_breakpoint()
      end)
      vim.keymap.set("n", "<F5>", function()
        dap.continue()
      end)
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("dap-python").setup()
    end,
  },
}
