package experimental

import (
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/prompts"
	"github.com/denkhaus/agent-config/tools"
	"github.com/denkhaus/agent-config/settings"
)

// Example of a chain agent that coordinates multiple sub-agents
development_coordinator: schema.#AgentConfig & {
    agent_id: "550e8400-e29b-41d4-a716-446655440005"
    name: "development-coordinator"
    description: "A chain agent that coordinates the development process by executing sub-agents in sequence"
    version: "v1.0.0"
    type: "chain"  // This is a chain agent

    prompt: {
        source: prompts.project_manager
        version: "v1.0.0"
    }

    setting: {
        source: settings.project_manager
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

    tool: {
        source: tools.project_manager
        version: "v1.0.0"
    }
}
