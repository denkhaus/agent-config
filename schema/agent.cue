package schema

import (
	"github.com/denkhaus/agents/pkg/provider/config"
	"github.com/denkhaus/agents/pkg/shared"
	"github.com/google/uuid"
)
// primitives
#Version: string & =~"^v[0-9]+\\.[0-9]+\\.[0-9]+(-[a-zA-Z0-9]+)?$"
#UUID: uuid.#UUID

#EnvironmentConfig: config.#EnvironmentConfig
#SystemConfig: config.#SystemConfig

#AgentConfig: config.#AgentConfig &{
	type: shared.#AgentType | *shared.#AgentTypeDefault
}

// Expose Go AgentRole constants as CUE definitions for use in other CUE files
AgentRoleCoder:          shared.#AgentRoleCoder
AgentRoleProjectManager: shared.#AgentRoleProjectManager
AgentRoleResearcher:     shared.#AgentRoleResearcher
AgentRoleDebugger:       shared.#AgentRoleDebugger
AgentRoleSupervisor:     shared.#AgentRoleSupervisor
AgentRoleHuman:          shared.#AgentRoleHuman

#PromptConfig:   config.#PromptConfig
#SettingsConfig: config.#SettingsConfig
#ToolsConfig:    config.#ToolsConfig

#AgentSettings: config.#AgentSettings & {
	time_awareness: config.#TimeAwarenessSettings & {
		is_enabled:  bool | *true
		time_zone:   string | *"Europe/Berlin"
		time_format: string | *"01.02.2006 15:04:05"
	}
}

#LLMSettings: config.#LLMSettings
