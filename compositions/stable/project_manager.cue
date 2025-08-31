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
	name:        "project-manager"
	description: "Project management and coordination agent"
	version:     "v1.0.0"

	prompt: {
		source:  prompts.project_manager
		version: "v1.0.0"
	}

	setting: {
		source:  settings.project_manager
		version: "v1.0.0"
	}

	tool: {
		source:  tools.project_manager
		version: "v1.0.0"
	}
}
