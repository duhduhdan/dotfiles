return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },

    config = function()
      local cmp = require("cmp")
      local cmp_lsp = require("cmp_nvim_lsp")
      local capabilities = vim.tbl_deep_extend(
        "force",
        {},
        vim.lsp.protocol.make_client_capabilities(),
        cmp_lsp.default_capabilities())

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
          "ts_ls",
          "zls",
          "clangd",
          "glsl_analyzer",
          "ols"
        },
        handlers = {
          function(server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {
              capabilities = capabilities
            }
          end,

          ["ols"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.ols.setup {
              capabilities = capabilities,
              settings = {
                Odin = {
                  enable_hover = true
                }
              }
            }
          end,

          ["zls"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.zls.setup {
              capabilities = capabilities,
              settings = {
                Zig = {
                  enableSnippets = true,
                  enableBuildOnSave = true,
                  warnStyle = true,
                  enableAutofix = true,
                }
              }
            }
          end,

          ["lua_ls"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup {
              capabilities = capabilities,
              settings = {
                Lua = {
                  runtime = { version = "Lua 5.4.7" },
                  diagnostics = {
                    globals = { "vim", "it", "describe", "before_each", "after_each", "Snacks" },
                  },
                  workspace = {
                    library = {
                      vim.env.VIMRUNTIME,
                      vim.fn.stdpath("data") .. "/lazy/snacks.nvim/lua",
                    }
                  }
                }
              }
            }
          end,
        }
      })

      local lspconfig = require("lspconfig")
      lspconfig.sourcekit.setup {
        capabilities = {
          workspace = {
            didChangeWatchedFiles = {
              dynamicRegistration = true
            }
          }
        },
        -- capabilities = capabilities,
        cmd = { "xcrun", "sourcekit-lsp" },
        filetypes = { "swift", "m", "h" },
        root_dir = function(fname)
          return lspconfig.util.root_pattern(
            "ios/*.xcodeproj",
            "node_modules/react-native/package.json"
          )(fname) or vim.loop.cwd()
        end,
        init_options = {
          buildSettings = {
            buildSystem = "xcode",
            sdkPath = vim.fn.trim(vim.fn.system("xcrun --show-sdk-path"))
          }
        }
      }

      local cmp_select = { behavior = cmp.SelectBehavior.Select }

      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
          ["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
          ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
          ["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
          ["<C-y"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
        })
      })

      vim.diagnostic.config({
        float = {
          focusable = false,
          style = "minimal",
          border = "rounded",
          source = "always",
          header = "",
          prefix = "",
        },
      })
    end
  },
}
