package tools

import "github.com/denkhaus/agent-config/schema"

project_manager: schema.#ToolProfile & {
	name:        "project-manager-basic"
	description: "Project management and coordination tools"

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
	}

	toolsets: {
		project_toolset: schema.#ProjectToolSetConfig & {
			enabled: true
			config: {
				read_only: false
			}
		}

		file_toolset: schema.#FileToolSetConfig & {
			enabled: true
			config: {
				workspace_path: "env:AGENTS_WORKSPACE_PATH"
				read_only:      true
			}
		}

		shell_toolset: schema.#ShellToolSetConfig & {
			enabled: false
		}

		tavily_toolset: schema.#TavilyToolSetConfig & {
			enabled: false
		}
	}
}
