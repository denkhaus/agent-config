package experimental

import (
	"github.com/denkhaus/agent-config/schema"
	prompts_v1_0 "github.com/denkhaus/agent-config/prompts/v1_0"
	"github.com/denkhaus/agent-config/tools/profiles"
	"github.com/denkhaus/agent-config/settings/default"
)

// Example of a parallel agent that executes research and coding simultaneously
parallel_research_development: schema.#Agent & {
    agent_id: "550e8400-e29b-41d4-a716-446655440007"
    name: "parallel-research-development"
    description: "A parallel agent that executes research and development tasks simultaneously"
    version: "v1.0.0"
    type: "parallel"  // This is a parallel agent

    prompt: {
        source: prompts_v1_0.project_manager
        version: "v1.0.0"
    }

    settings: {
        source: default.project_manager
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

    tools: {
        source: profiles.project_manager
        version: "v1.0.0"
    }
}
