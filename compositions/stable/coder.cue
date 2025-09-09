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
	role:        schema.AgentRoleCoder
	description: "Software development agent with coordination capabilities"

	prompt:  prompts.coder
	setting: settings.coder
	tool:    tools.coder
}
