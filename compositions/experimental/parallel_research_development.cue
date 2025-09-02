package experimental

import (
	"github.com/denkhaus/agent-config/constants"
	"github.com/denkhaus/agent-config/prompts"
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/tools"
	settingsPkg "github.com/denkhaus/agent-config/settings"
)

// Example of a parallel agent that executes research and coding simultaneously
parallel_research_development: schema.#AgentConfig & {
	agent_id:    constants.AgentIDParallelResearchDevelopment
	name:        "parallel-research-development"
	role:        schema.AgentRoleSupervisor // Assign a role
	description: "A parallel agent that executes research and development tasks simultaneously"
	type:        "parallel" // This is a parallel agent

	prompt: prompts.project_manager
	tool: tools.project_manager
	setting: settingsPkg.project_manager & {
		agent: {
			// For parallel agents, we specify the sub-agents to execute in parallel
			sub_agents: [
				schema.AgentRoleResearcher,
				schema.AgentRoleCoder,
			]
		}
	}
}
