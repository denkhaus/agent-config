package environments

import "github.com/denkhaus/agent-config/compositions/stable"

production: {
    environment: "production"
    version: "v1.0.0"
    description: "Production environment configuration"

    agents: {
        coder: stable.coder & {
            tool: overrides: toolsets: {
                shell: {
                    enabled: true
                    config: {
                        timeout: 300  // 5 minutes for production builds
                        allowed_commands: ["go", "git", "make", "ls", "cat"]
                    }
                }
            }
        }

        project_manager: stable.project_manager

        researcher: stable.researcher & {
            tool: overrides: toolsets: {
                tavily: {
                    enabled: true
                    config: {
                        api_key: "env:TAVILY_API_KEY"
                        rate_limit: 100
                        max_results: 10
                    }
                }
            }
        }
    }
}
