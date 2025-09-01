package tools

import "github.com/denkhaus/agent-config/schema"

researcher: schema.#ToolProfile & {
	name:        "researcher-basic"
	description: "Research and information gathering tools"

	tools: {
		calculator: schema.#CalculatorToolConfig & {
			enabled: true
			config: {}
		}

		fetch: schema.#FetchToolConfig & {
			enabled: true
			config: {
				default_timeout: 60
				default_headers: {
					"User-Agent": "Research-Agent/1.0"
				}
				max_retries: 3
			}
		}

		current_time: schema.#TimeToolConfig & {
			enabled: true
			config: {
				default_timezone: "Europe/Berlin"
			}
		}

		duckduckgo_search: schema.#DuckToolConfig & {
			enabled: true
			config: {}
		}
	}

	toolsets: {
		tavily_toolset: schema.#TavilyToolSetConfig & {
			enabled: true
			config: {
				api_key:         "env:TAVILY_API_KEY"
				search_enabled:  true
				crawl_enabled:   true
				extract_enabled: true
				map_enabled:     true
			}
		}

		file_toolset: schema.#FileToolSetConfig & {
			enabled: true
			config: {
				workspace_path: "./test_workspace"
				read_only:      true
			}
		}

		shell_toolset: schema.#ShellToolSetConfig & {
			enabled: false
			config: {
				base_dir:                "./test_workspace"
				execute_command_enabled: false
			}
		}

		project_toolset: schema.#ProjectToolSetConfig & {
			enabled: false
			config: {
				read_only: true
			}
		}
	}

}
