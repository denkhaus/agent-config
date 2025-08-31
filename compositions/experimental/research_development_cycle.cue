package experimental

import (
	"github.com/denkhaus/agent-config/constants"
	"github.com/denkhaus/agent-config/prompts"
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/tools"
	settingsPkg "github.com/denkhaus/agent-config/settings"
)

// Example of a cycle agent that iterates between research and coding
research_development_cycle: schema.#AgentConfig & {
    agent_id: constants.AgentIDResearchDevelopmentCycle
    name: "research-development-cycle"
    role: schema.AgentRoleSupervisor // Assign a role
    description: "A cycle agent that iterates between research and development until a solution is found"
    version: "v1.0.0"
    type: "cycle"  // This is a cycle agent

    prompt: {
        source: prompts.project_manager
    }

    setting: {
        source: settingsPkg.project_manager
        overrides: {
            agent: {
                // For cycle agents, we specify the sub-agents to cycle through
                sub_agents: [
                    schema.AgentRoleResearcher, // Use role instead of ID
                    schema.AgentRoleCoder,      // Use role instead of ID
                ]
                // Maximum iterations for the cycle
                max_iterations: 5
            }
        }
    }

    tool: {
        source: tools.project_manager
    }
}
