package stable

import (
	"github.com/denkhaus/agent-config/constants"
	"github.com/denkhaus/agent-config/prompts/v1_0"
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/settings/default"
	"github.com/denkhaus/agent-config/tools/profiles"
)

coder: schema.#Agent & {
	agent_id:    constants.AgentIDCoder
	name:        "coder"
	description: "Software development agent with coordination capabilities"
	version:     "v1.0.0"

	prompt: {
		source:  v1_0.coder
		version: "v1.0.0"
	}

	settings: {
		source:  default.coder
		version: "v1.0.0"
	}

	tools: {
		source:  profiles.coder
		version: "v1.0.0"
	}
}
