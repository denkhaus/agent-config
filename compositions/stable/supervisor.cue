package stable

import (
	"github.com/denkhaus/agent-config/constants"
	"github.com/denkhaus/agent-config/prompts"
	"github.com/denkhaus/agent-config/settings"
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/tools"
)

supervisor: schema.#AgentConfig & {
	agent_id:    constants.AgentIDSupervisor
	name:        "supervisor"
	role:        schema.AgentRoleSupervisor
	description: "Supervisor agent to coordinate a swarm of helpfull agents"

	prompt:  prompts.supervisor
	setting: settings.supervisor
	tool:    tools.supervisor
}
