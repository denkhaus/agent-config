package stable

import (
	"github.com/denkhaus/agent-config/constants"
	"github.com/denkhaus/agent-config/prompts/v1_0"
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/settings/default"
	"github.com/denkhaus/agent-config/tools/profiles"
)

researcher: schema.#Agent & {
	agent_id:    constants.AgentIDResearcher
	name:        "researcher"
	description: "Research and information gathering agent"
	version:     "v1.0.0"

	prompt: {
		source:  v1_0.researcher
		version: "v1.0.0"
	}

	settings: {
		source:  default.researcher
		version: "v1.0.0"
	}

	tools: {
		source:  profiles.researcher
		version: "v1.0.0"
	}
}
