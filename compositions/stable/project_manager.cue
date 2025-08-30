package stable

import (
    "github.com/denkhaus/agent-config/schema"
    "github.com/denkhaus/agent-config/prompts/v1.0"
    "github.com/denkhaus/agent-config/tools/profiles"
    "github.com/denkhaus/agent-config/settings/default"
)

project_manager: schema.#Agent & {
    agent_id: "550e8400-e29b-41d4-a716-446655440003"
    name: "project-manager"
    description: "Project management and coordination agent"
    version: "v1.0.0"
    
    prompt: {
        source: "prompts_v1_0.project_manager"
        version: "v1.0.0"
    }
    
    settings: {
        source: "settings_default.project_manager"
        version: "v1.0.0"
    }
    
    tools: {
        source: "tools_profiles.project_manager"
        version: "v1.0.0"
    }
    
}