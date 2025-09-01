package schema

import (
	providerConfig "github.com/denkhaus/agents/pkg/provider/config"
	"github.com/denkhaus/agents/pkg/shared"
)

// Agent composition schema (different from runtime AgentConfig)
#AgentConfig: {
	agent_id:     #UUID
	name:         string
	role:         shared.#AgentRole
	description?: string
	version:      #Version

	// Agent type
	type: "default" | "chain" | "cycle" | "parallel" | *"default"

	// Component references
	prompt:  #PromptRef
	setting: #SettingsRef
	tool:    #ToolsRef
}

// Expose Go AgentRole constants as CUE definitions for use in other CUE files
AgentRoleCoder:          shared.#AgentRoleCoder
AgentRoleProjectManager: shared.#AgentRoleProjectManager
AgentRoleResearcher:     shared.#AgentRoleResearcher
AgentRoleDebugger:       shared.#AgentRoleDebugger
AgentRoleSupervisor:     shared.#AgentRoleSupervisor
AgentRoleHuman:          shared.#AgentRoleHuman

#PromptConfig:   providerConfig.#PromptConfig
#SettingsConfig: providerConfig.#SettingsConfig
#ToolsConfig:    providerConfig.#ToolsConfig
#AgentSettings:  providerConfig.#AgentSettings
#LLMSettings:    providerConfig.#LLMSettings

// Legacy reference types for backward compatibility
#PromptRef: {
	source: #PromptConfig
	overrides?: {...}
}

#SettingsRef: {
	source: #SettingsConfig
	overrides?: {...}
}

#ToolsRef: {
	source: #ToolsConfig
	overrides?: {
		tools?: {[string]: providerConfig.#ToolConfig}
		toolsets?: {[=~".*_toolset$"]: providerConfig.#ToolSetConfig}
	}
}
