package experimental

import (
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/prompts"
	"github.com/denkhaus/agent-config/tools"
	settingsPkg "github.com/denkhaus/agent-config/settings"
)

// Example of a parallel agent that executes research and coding simultaneously
parallel_research_development: schema.#AgentConfig & {
    agent_id: "550e8400-e29b-41d4-a716-446655440007"
    name: "parallel-research-development"
    description: "A parallel agent that executes research and development tasks simultaneously"
    version: "v1.0.0"
    type: "parallel"  // This is a parallel agent

    prompt: {
        source: prompts.project_manager
        version: "v1.0.0"
    }

    setting: {
        source: settingsPkg.project_manager
        version: "v1.0.0"
        overrides: {
            agent: {
                // For parallel agents, we specify the sub-agents to execute in parallel
                sub_agents: [
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
