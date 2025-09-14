package settings

import "github.com/denkhaus/agent-config/schema"

import "github.com/denkhaus/agent-config/constants"

project_manager: schema.#SettingsConfig & {
	agent_id:    constants.AgentIDProjectManager
	name:        "project-manager-default"
	description: "Default settings for project manager agent"

	agent: {
		planning_enabled:    true
		max_iterations:      int | *10
		timeout:             300
		streaming_enabled:   true
		channel_buffer_size: 100
		allowed_to_communicate_with: [
			constants.AgentIDHuman,
			constants.AgentIDSupervisor,
			constants.AgentIDResearcher,
		]

		llm: {
			model:             "deepseek-chat"
			temperature:       0.5
			max_tokens:        2000
			top_p:             1.0
			frequency_penalty: 0.0
			presence_penalty:  0.0
			provider:          "openai"
		}
	}

}
