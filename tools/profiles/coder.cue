package profiles

import "github.com/denkhaus/agent-config/schema"

coder: schema.#ToolProfile & {
	name:        "coder-basic"
	description: "Development tools for coding, building, and testing"

	tools: {
		calculator: {
			enabled: true
			config: {}
		}

		current_time: {
			enabled: true
			config: {}
		}
	}

	toolsets: {
		file: {
			enabled: true
			config: {
				read_only:     false
				base_dir:      "./workspace"
				max_file_size: 10485760 // 10MB
			}
		}

		shell: {
			enabled: true
			config: {
				base_dir:        "./workspace"
				timeout:         300 // 5 minutes for build operations
				execute_enabled: true
				allowed_commands: [
					"go", "git", "ls", "cat", "grep", "find",
					"make", "npm", "yarn", "docker",
				]
			}
		}

		project: {
			enabled: false
			config: {}
		}

		tavily: schema.#TavilyToolConfig & {
			enabled: false
			config: {}
		}
	}

}
