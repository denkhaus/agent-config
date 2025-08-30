package stable

import (
    "github.com/denkhaus/agent-config/schema"
    "github.com/denkhaus/agent-config/prompts/v1.0"
    "github.com/denkhaus/agent-config/tools/profiles"
    "github.com/denkhaus/agent-config/settings/default"
)

coder: schema.#Agent & {
    agent_id: "550e8400-e29b-41d4-a716-446655440001"
    name: "coder"
    description: "Software development agent with coordination capabilities"
    version: "v1.0.0"
    
    prompt: {
        source: "prompts_v1_0.coder"
        version: "v1.0.0"
    }
    
    settings: {
        source: "settings_default.coder"
        version: "v1.0.0"
    }
    
    tools: {
        source: "tools_profiles.coder"
        version: "v1.0.0"
    }
    
}