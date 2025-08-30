package experimental

import (
	"github.com/denkhaus/agent-config/schema"
	v1_0 "github.com/denkhaus/agent-config/prompts/v1_0"
	profiles "github.com/denkhaus/agent-config/tools/profiles"
	"github.com/denkhaus/agent-config/settings/default"
)

// Example of a chain agent that coordinates multiple sub-agents
development_coordinator: schema.#Agent & {
    agent_id: "550e8400-e29b-41d4-a716-446655440005"
    name: "development-coordinator"
    description: "A chain agent that coordinates the development process by executing sub-agents in sequence"
    version: "v1.0.0"
    type: "chain"  // This is a chain agent

    prompt: {
        source: v1_0.project_manager
        version: "v1.0.0"
    }

    settings: {
        source: default.project_manager
        version: "v1.0.0"
        overrides: {
            agent: {
                // For chain agents, we specify the sub-agents to execute in sequence
                sub_agents: [
                    "550e8400-e29b-41d4-a716-446655440003",  // project-manager
                    "550e8400-e29b-41d4-a716-446655440004",  // researcher
                    "550e8400-e29b-41d4-a716-446655440001"   // coder
                ]
            }
        }
    }

    tools: {
        source: profiles.project_manager
        version: "v1.0.0"
    }
}
