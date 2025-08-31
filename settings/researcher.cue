package settings

import "github.com/denkhaus/agent-config/schema"
import "github.com/denkhaus/agent-config/constants"

researcher: schema.#SettingsConfig & {
    agent_id: constants.AgentIDResearcher
    name: "researcher-default"
    description: "Default settings for researcher agent"

    agent: {
        application_name: "denkhaus-researcher"
        planning_enabled: false
        react_enabled: true
        max_iterations: 10
        timeout: 300
        streaming_enabled: true
        channel_buffer_size: 100

        llm: {
            model: "deepseek-chat"
            temperature: 0.7
            max_tokens: 4000
            top_p: 1.0
            frequency_penalty: 0.0
            presence_penalty: 0.0
            provider: "openai"
        }
    }

}
