package stable

import (
	"github.com/denkhaus/agent-config/constants"
	"github.com/denkhaus/agent-config/prompts"
	"github.com/denkhaus/agent-config/settings"
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/tools"
)

coder: schema.#AgentConfig & {
	agent_id:    constants.AgentIDCoder
	name:        "coder"
	description: "Software development agent with coordination capabilities"
	version:     "v1.0.0"

	prompt: {
		source:  prompts.coder
		version: "v1.0.0"
	}

	setting: {
		source:  settings.coder
		version: "v1.0.0"
	}

	tool: {
		source:  tools.coder
		version: "v1.0.0"
	}
}
