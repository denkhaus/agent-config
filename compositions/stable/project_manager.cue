package stable

import (
	"github.com/denkhaus/agent-config/constants"
	"github.com/denkhaus/agent-config/prompts/v1_0"
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/settings/default"
	"github.com/denkhaus/agent-config/tools/profiles"
)

project_manager: schema.#Agent & {
	agent_id:    constants.AgentIDProjectManager
	name:        "project-manager"
	description: "Project management and coordination agent"
	version:     "v1.0.0"

	prompt: {
		source:  v1_0.project_manager
		version: "v1.0.0"
	}

	settings: {
		source:  default.project_manager
		version: "v1.0.0"
	}

	tools: {
		source:  profiles.project_manager
		version: "v1.0.0"
	}
}
