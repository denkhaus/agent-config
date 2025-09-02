package experimental

import (
	"github.com/denkhaus/agent-config/constants"
	"github.com/denkhaus/agent-config/prompts"
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/settings"
	"github.com/denkhaus/agent-config/tools"
)

// Example of a chain agent that coordinates multiple sub-agents
development_coordinator: schema.#AgentConfig & {
	agent_id:    constants.AgentIDDevelopmentCoordinator
	name:        "development-coordinator"
	role:        schema.AgentRoleSupervisor // Assign a role
	description: "A chain agent that coordinates the development process by executing sub-agents in sequence"
	type:        "chain" // This is a chain agent

	prompt: prompts.project_manager


	setting: settings.project_manager & {
		agent: {
			// For chain agents, we specify the sub-agents to execute in sequence
			sub_agents: [
				schema.AgentRoleProjectManager, // Use role instead of ID
				schema.AgentRoleResearcher,     // Use role instead of ID
				schema.AgentRoleCoder,          // Use role instead of ID
			]
		}

	}

	tool: tools.project_manager
}
