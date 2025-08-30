package default

import "github.com/denkhaus/agent-config/schema"

researcher: schema.#Settings & {
    agent_id: "550e8400-e29b-41d4-a716-446655440004"
    name: "researcher-default"
    description: "Default settings for researcher agent"

    agent: {
        application_name: "denkhaus-researcher"
        planning_enabled: false
        react_enabled: true
        max_iterations: 10
        timeout: 300

        llm: {
            model: "deepseek-chat"
            temperature: 0.7
            max_tokens: 4000
            top_p: 1.0
            frequency_penalty: 0.0
            presence_penalty: 0.0
        }
    }

}
