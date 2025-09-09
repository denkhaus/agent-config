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
	role:        schema.AgentRoleResearcher
	description: "Research and information gathering agent"

	prompt:  prompts.researcher
	setting: settings.researcher
	tool:    tools.researcher
}
