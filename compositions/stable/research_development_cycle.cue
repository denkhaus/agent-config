package examples

import (
    "github.com/denkhaus/agent-config/schema"
    "github.com/denkhaus/agent-config/prompts/v1.0"
    "github.com/denkhaus/agent-config/tools/profiles"
    "github.com/denkhaus/agent-config/settings/default"
)

// Example of a cycle agent that iterates between research and coding
research_development_cycle: schema.#Agent & {
    agent_id: "550e8400-e29b-41d4-a716-446655440006"
    name: "research-development-cycle"
    description: "A cycle agent that iterates between research and development until a solution is found"
    version: "v1.0.0"
    type: "cycle"  // This is a cycle agent
    
    prompt: {
        source: "prompts_v1_0.project_manager"
        version: "v1.0.0"
    }
    
    settings: {
        source: "settings_default.project_manager"
        version: "v1.0.0"
        overrides: {
            agent: {
                // For cycle agents, we specify the sub-agents to cycle through
                sub_agents: [
                    "550e8400-e29b-41d4-a716-446655440004",  // researcher
                    "550e8400-e29b-41d4-a716-446655440001"   // coder
                ]
                // Maximum iterations for the cycle
                max_iterations: 5
            }
        }
    }
    
    tools: {
        source: "tools_profiles.project_manager"
        version: "v1.0.0"
    }
}