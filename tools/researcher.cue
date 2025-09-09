package tools

import "github.com/denkhaus/agent-config/schema"

researcher: schema.#ToolProfile & {
	name:        "researcher-basic"
	description: "Research and information gathering tools"

	tools: {
		calculator: schema.#CalculatorToolConfig & {
			enabled: true
		}

		fetch: schema.#FetchToolConfig & {
			enabled: false
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
		}
	}

	toolsets: {
		tavily_toolset: schema.#TavilyToolSetConfig & {
			enabled: true
			config: {
				api_key:         string | *"env:TAVILY_API_KEY"
				search_enabled:  true
				crawl_enabled:   true
				extract_enabled: true
				map_enabled:     true
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
			enabled: bool | *false
		}

		project_toolset: schema.#ProjectToolSetConfig & {
			enabled: false
		}
	}

}
