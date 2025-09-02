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
	name:        "project_manager"              // Changed hyphen to underscore
	role:        schema.AgentRoleProjectManager // Use the strong type from schema
	description: "Project management and coordination agent"

	prompt: {
		source: prompts.project_manager
	}

	setting: {
		source: settings.project_manager
	}

	tool: {
		source: tools.project_manager
	}
}
