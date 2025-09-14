package environments

import (
	"github.com/denkhaus/agent-config/compositions/stable"
	"github.com/denkhaus/agent-config/schema"
)

production: schema.#EnvironmentConfig & {
	name:        "production"
	description: "Production environment configuration"
	agents: {
		project_manager: stable.project_manager
		researcher:      stable.researcher
		supervisor:      stable.supervisor
		coder: stable.coder & {
			tool: {
				toolsets: {
					shell_toolset: {
						enabled: true
					}
				}
			}
		}
	}
}
