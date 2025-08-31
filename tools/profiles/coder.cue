package profiles

import "github.com/denkhaus/agent-config/schema"

coder: schema.#ToolProfile & {
	name:        "coder-basic"
	description: "Development tools for coding, building, and testing"

	tools: {
		calculator: schema.#CalculatorToolConfig & {
			enabled: true
			config: {}
		}

		current_time: schema.#TimeToolConfig & {
			enabled: true
			config: {
				default_timezone: "UTC"
			}
		}

		fetch: schema.#FetchToolConfig & {
			enabled: true
			config: {
				default_timeout: 30
				max_retries: 2
			}
		}
	}

	toolsets: {
		file: schema.#FileToolSetConfig & {
			enabled: true
			config: {
				workspace_path: "./workspace"
				read_only: false
			}
		}

		shell: schema.#ShellToolSetConfig & {
			enabled: true
			config: {
				base_dir: "./workspace"
				execute_command_enabled: true
				allowed_commands: [
					"go", "git", "ls", "cat", "grep", "find",
					"make", "npm", "yarn", "docker",
				]
				timeout: 300000000000 // 5 minutes in nanoseconds
				max_output_size: 10485760 // 10MB
			}
		}

		project: schema.#ProjectToolSetConfig & {
			enabled: true
			config: {
				read_only: false
			}
		}

		tavily: schema.#TavilyToolSetConfig & {
			enabled: false
			config: {
				api_key: ""
				search_enabled: false
				crawl_enabled: false
				extract_enabled: false
				map_enabled: false
			}
		}
	}

}
