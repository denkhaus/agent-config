package environments

import (
	"github.com/denkhaus/agent-config/compositions/stable"
	"github.com/denkhaus/agent-config/schema"
)

development: schema.#EnvironmentConfig & {
	name:        "development"
	description: "Development environment configuration with enhanced debugging"
	agents: {
		coder: stable.coder & {
			tool: {
				toolsets: {
					shell_toolset: {
						enabled: true
					}
				}
			}
		}

		project_manager: stable.project_manager

		researcher: stable.researcher & {
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
