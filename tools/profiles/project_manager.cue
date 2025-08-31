package profiles

import "github.com/denkhaus/agent-config/schema"

project_manager: schema.#ToolProfile & {
	name:        "project-manager-basic"
	description: "Project management and coordination tools"

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
		project: {
			enabled: true
			config: {}
		}

		file: {
			enabled: true
			config: {
				read_only:     true // Project manager can read but not modify files directly
				base_dir:      "./workspace"
				max_file_size: 5242880 // 5MB
			}
		}

		shell: {
			enabled: false
			config: {}
		}

		tavily: schema.#TavilyToolConfig & {
			enabled: false
			config: {}
		}
	}

}
