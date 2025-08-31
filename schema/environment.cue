package schema

import (
	"github.com/denkhaus/agents/pkg/shared"
)

#EnvironmentConfig: {
	environment: string
	description: string
	agents: [string]: #AgentConfig
	roles: [shared.#AgentRole]: string // New field
}
