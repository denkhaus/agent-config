package tools

import "github.com/denkhaus/agent-config/schema"

researcher: schema.#ToolProfile & {
    name: "researcher-basic"
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
                default_timezone: "UTC"
            }
        }

        duckduckgo: schema.#DuckToolConfig & {
            enabled: true
            config: {}
        }
    }

    toolsets: {
        tavily: schema.#TavilyToolSetConfig & {
            enabled: true
            config: {
                api_key: "env:TAVILY_API_KEY"
                search_enabled: true
                crawl_enabled: true
                extract_enabled: true
                map_enabled: true
            }
        }

        file: schema.#FileToolSetConfig & {
            enabled: true
            config: {
                workspace_path: "./workspace"
                read_only: true  // Researcher can read files but not modify them
            }
        }

        shell: schema.#ShellToolSetConfig & {
            enabled: false
            config: {
                base_dir: "./workspace"
                execute_command_enabled: false
            }
        }

        project: schema.#ProjectToolSetConfig & {
            enabled: false
            config: {
                read_only: true
            }
        }
    }

}
