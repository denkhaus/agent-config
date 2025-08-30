package environments

import "github.com/denkhaus/agent-config/compositions/stable"

development: {
    environment: "development"
    version: "v1.0.0"
    description: "Development environment configuration with enhanced debugging"

    agents: {
        coder: stable.coder & {
            tools: overrides: toolsets: {
                shell: config: {
                    timeout: 600  // 10 minutes for dev builds
                    allowed_commands: [
                        "go", "git", "make", "ls", "cat", "grep", "find",
                        "npm", "yarn", "docker", "curl", "wget"
                    ]
                }
            }
        }

        project_manager: stable.project_manager

        researcher: stable.researcher & {
            tools: overrides: toolsets: {
                tavily: config: {
                    api_key: "env:TAVILY_API_KEY:dev-fallback-key"
                    max_results: 5  // Reduced for dev
                }
                shell: {
                    enabled: true  // Enable shell in dev for debugging
                    config: {
                        allowed_commands: ["ls", "cat", "grep", "find"]
                        timeout: 60
                    }
                }
            }
        }
    }
}
