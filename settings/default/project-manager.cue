package default

import "github.com/denkhaus/agent-config/schema"

project_manager: schema.#Settings & {
    agent_id: "550e8400-e29b-41d4-a716-446655440003"
    name: "project-manager-default"
    description: "Default settings for project manager agent"

    agent: {
        application_name: "denkhaus-project-manager"
        planning_enabled: true
        react_enabled: true
        max_iterations: 10
        timeout: 300

        llm: {
            model: "deepseek-chat"
            temperature: 0.5
            max_tokens: 2000
            top_p: 1.0
            frequency_penalty: 0.0
            presence_penalty: 0.0
        }
    }

}
