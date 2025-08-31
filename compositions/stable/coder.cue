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
	role:        schema.AgentRoleCoder // Use the strong type from schema
	description: "Software development agent with coordination capabilities"
	version:     "v1.0.0"

	prompt: {
		source:  prompts.coder
	}

	setting: {
		source:  settings.coder
	}

	tool: {
		source:  tools.coder
	}
}
