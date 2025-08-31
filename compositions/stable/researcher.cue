package stable

import (
	"github.com/denkhaus/agent-config/constants"
	"github.com/denkhaus/agent-config/prompts"
	"github.com/denkhaus/agent-config/schema"
	"github.com/denkhaus/agent-config/settings"
	"github.com/denkhaus/agent-config/tools"
)

researcher: schema.#AgentConfig & {
	agent_id:    constants.AgentIDResearcher
	name:        "researcher"
	description: "Research and information gathering agent"
	version:     "v1.0.0"

	prompt: {
		source:  prompts.researcher
		version: "v1.0.0"
	}

	setting: {
		source:  settings.researcher
		version: "v1.0.0"
	}

	tool: {
		source:  tools.researcher
		version: "v1.0.0"
	}
}
