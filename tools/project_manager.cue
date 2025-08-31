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
				default_timezone: "UTC"
			}
		}
	}

	toolsets: {
		project: schema.#ProjectToolSetConfig & {
			enabled: true
			config: {
				read_only: false
			}
		}

		file: schema.#FileToolSetConfig & {
			enabled: true
			config: {
				workspace_path: "./workspace"
				read_only: true // Project manager can read but not modify files directly
			}
		}

		shell: schema.#ShellToolSetConfig & {
			enabled: false
			config: {
				base_dir: "./workspace"
				execute_command_enabled: false
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
