package profiles

import "github.com/denkhaus/agent-config/schema"

researcher: schema.#ToolProfile & {
    name: "researcher-basic"
    description: "Research and information gathering tools"

    tools: {
        calculator: {
            enabled: true
            config: {}
        }

        fetch: {
            enabled: true
            config: {
                timeout: 60
                default_headers: {
                    "User-Agent": "Research-Agent/1.0"
                }
            }
        }

        current_time: {
            enabled: true
            config: {}
        }

        duckduckgo: {
            enabled: true
            config: {}
        }
    }

    toolsets: {
        tavily: {
            enabled: true
            config: {
                api_key: "env:TAVILY_API_KEY"
                max_results: 10
                include_images: false
                include_answer: true
            }
        }

        file: {
            enabled: true
            config: {
                read_only: true  // Researcher can read files but not modify them
                base_dir: "./workspace"
                max_file_size: 5242880  // 5MB
            }
        }

        shell: {
            enabled: false
            config: {}
        }

        project: {
            enabled: false
            config: {}
        }
    }

}
