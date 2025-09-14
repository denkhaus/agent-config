package settings

import "github.com/denkhaus/agent-config/schema"

import "github.com/denkhaus/agent-config/constants"

supervisor: schema.#SettingsConfig & {
	agent_id:    constants.AgentIDSupervisor
	name:        "supervisor-default"
	description: "Default settings for supervisor agent"

	agent: {
		planning_enabled:    true
		max_iterations:      10
		timeout:             600
		streaming_enabled:   false
		channel_buffer_size: 100
		allowed_to_communicate_with: [
			constants.AgentIDHuman,
			constants.AgentIDCoder,
			constants.AgentResearcher,
			constants.AgentIDProjectManager,
		]

		llm: {
			model:             "deepseek-chat"
			provider:          "openai"
			temperature:       0.3
			max_tokens:        2000
			top_p:             1.0
			frequency_penalty: 0.0
			presence_penalty:  0.0
		}
	}
}
