package schema

import (
	providerConfig "github.com/denkhaus/agents/pkg/provider/config"
)

// Use the types from pkg/provider/config
#Settings: providerConfig.#SettingsConfig
#AgentSettings: providerConfig.#AgentSettings
#LLMSettings: providerConfig.#LLMSettings
