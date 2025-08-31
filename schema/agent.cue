package schema

import (
	providerConfig "github.com/denkhaus/agents/pkg/provider/config"
)

// Agent composition schema (different from runtime AgentConfig)
#AgentConfig: {
    // Core identification
    agent_id: #UUID
    name: string
    description?: string
    version: #Version

    // Agent type
    type: "default" | "chain" | "cycle" | "parallel" | *"default"

    // Component references
    prompt: #PromptRef
    setting: #SettingsRef
    tool: #ToolsRef
}


#PromptConfig: providerConfig.#PromptConfig
#SettingsConfig: providerConfig.#SettingsConfig
#ToolsConfig: providerConfig.#ToolsConfig
#AgentSettings: providerConfig.#AgentSettings
#LLMSettings: providerConfig.#LLMSettings

// Legacy reference types for backward compatibility
#PromptRef: {
    source: #PromptConfig
    version: #Version
    overrides?: {...}
}

#SettingsRef: {
    source: #SettingsConfig
    version: #Version
    overrides?: {...}
}

#ToolsRef: {
    source: #ToolsConfig
    version: #Version
    overrides?: {
        tools?: {[string]: providerConfig.#ToolConfig}
        toolsets?: {[string]: providerConfig.#ToolSetConfig}
    }
}
