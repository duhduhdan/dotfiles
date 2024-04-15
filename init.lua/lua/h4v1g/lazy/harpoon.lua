return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require('harpoon')
      harpoon:setup({})

      -- basic telescope configuration
      local conf = require("telescope.config").values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
            table.insert(file_paths, item.value)
        end

        require("telescope.pickers").new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
              results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
          attach_mappings = function()
            vim.keymap.set("i", "<C-r>", function()
              local selected_entry = require("telescope.actions.state").get_selected_entry()
              if selected_entry then
                local item = harpoon:list():get_by_display(selected_entry.value)
                harpoon:list():remove(item)
                print("removed " .. item.value .. " from harpoon list")
              end
            end)
            return true
          end,
        }):find()
      end

      vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
          { desc = "Open harpoon window" })

    end
  },
}
