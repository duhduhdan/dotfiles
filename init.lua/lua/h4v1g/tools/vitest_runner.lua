local log = require("codecompanion.utils.log")
local xml2lua = require("codecompanion.utils.xml.xml2lua")

---@class CodeCompanion.Tool
return {
  cmds = {
    {
      "docker",
      "run",
      "--rm",
      "-v",
      "${project_root}:${project_root}",
      "-w",
      "${project_root}",
      "node:latest",
      "npx",
      "vitest",
      "${test_file}",
      "${additional_args}",
    },
  },
  schema = {
    name = "vitest_runner",
    parameters = {
      inputs = {
        test_file = "path/to/test/file.test.js",
        additional_args = "--run",
      },
    },
  },
  system_prompt = function(schema)
    return
        "I'm giving you access to the **Vitest Runner** tool which enables you to run Vitest tests. You can specify the test file and additional arguments to run the tests. This is useful to execute tests and see the results immediately.\n\nTo use the tool, you need to return an XML markdown code block (with backticks) which follows the below schema:"
        .. "\n\n```xml\n"
        .. xml2lua.toXml(schema, "tool")
        .. "\n```\n\n"
        ..
        "You can see that the schema has input parameters where you can specify the test file path and additional arguments for Vitest.\n\n"
        .. "NOTE: The tool will only parse the last schema that you respond with.\n\n"
        .. "NOTE: If you don't conform to the schema, EXACTLY, then the tool will not run.\n\n"
        .. "NOTE: Please respond concisely so I can understand and observe the tests you're executing with the tool."
  end,
  env = function(xml)
    local test_file = xml.parameters.inputs.test_file
    local additional_args = xml.parameters.inputs.additional_args

    return {
      test_file = test_file,
      additional_args = additional_args,
      project_root = vim.fn.getcwd(),
    }
  end,
  pre_cmd = function(env)
    if not vim.fn.filereadable(env.test_file) then
      log:error("Test file does not exist: " .. env.test_file)
      return false
    end
    return true
  end,
  output_error_prompt = function(error)
    if type(error) == "table" then
      error = table.concat(error, "\n")
    end
    return "After the Vitest Runner tool completed, there was an error:"
        .. "\n\n```\n"
        .. error
        .. "\n```\n\n"
        .. "Can you analyze this error and suggest a fix?"
  end,
  output_prompt = function(output)
    if type(output) == "table" then
      output = table.concat(output, "\n")
    end

    return "After the Vitest Runner tool completed, the output was:"
        .. "\n\n```\n"
        .. output
        .. "\n```\n\n"
        ..
        "Can you analyze these test results and provide a summary? If all tests passed, just confirm. If there are failures, please suggest potential fixes."
  end,
}
