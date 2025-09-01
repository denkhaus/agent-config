package environments

import (
	"github.com/denkhaus/agent-config/compositions/stable"
	"github.com/denkhaus/agent-config/schema"
)

production: schema.#EnvironmentConfig & {
    environment: "production"

    description: "Production environment configuration"

    agents: {
        coder: stable.coder & {
            tool: overrides: toolsets: {
                shell_toolset: {
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
                tavily_toolset: {
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
