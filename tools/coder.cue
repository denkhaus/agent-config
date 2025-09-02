package tools

import "github.com/denkhaus/agent-config/schema"

coder: schema.#ToolProfile & {
	name:        "coder-basic"
	description: "Development tools for coding, building, and testing with enhanced capabilities"

	tools: {
		calculator: schema.#CalculatorToolConfig & {
			enabled: true
			config: {}
		}

		current_time: schema.#TimeToolConfig & {
			enabled: true
			config: {
				default_timezone: "Europe/Berlin"
			}
		}

		fetch: schema.#FetchToolConfig & {
			enabled: true
			config: {
				default_timeout: 30
				max_retries:     2
			}
		}
	}

	toolsets: {
		file_toolset: schema.#FileToolSetConfig & {
			enabled: true
			config: {
				workspace_path: "./test_workspace"
				read_only:      false
			}
		}

		shell_toolset: schema.#ShellToolSetConfig & {
			enabled: true
			config: {
				base_dir: "./test_workspace"
				execute_command_enabled: true
				allowed_commands: [
					"go", "git", "ls", "cat", "grep", "find",
					"make", "npm", "yarn", "docker",
				]
				timeout:     int64 | *300000000000 // 5 minutes in nanoseconds
				max_output_size: int64 | *1048576   // 1MB
			}
		}

		project_toolset: schema.#ProjectToolSetConfig & {
			enabled: true
			config: {
				read_only: true
			}
		}

		tavily_toolset: schema.#TavilyToolSetConfig & {
			enabled: false
		}
	}

}
