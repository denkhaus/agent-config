package stable

import (
	"github.com/denkhaus/agent-config/constants"
	"github.com/denkhaus/agent-config/prompts"
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/settings"
	"github.com/denkhaus/agent-config/tools"
)

project_manager: schema.#AgentConfig & {
	agent_id:    constants.AgentIDProjectManager
	name:        "project_manager"
	role:        schema.AgentRoleProjectManager
	description: "Project management and coordination agent"

	prompt:  prompts.project_manager
	setting: settings.project_manager
	tool:    tools.project_manager
}
