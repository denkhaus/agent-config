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
	role:        schema.AgentRoleResearcher // Use the strong type from schema
	description: "Research and information gathering agent"
	version:     "v1.0.0"

	prompt: {
		source:  prompts.researcher
	}

	setting: {
		source:  settings.researcher
	}

	tool: {
		source:  tools.researcher
	}
}
