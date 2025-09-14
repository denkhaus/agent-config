package tools

import "github.com/denkhaus/agent-config/schema"

supervisor: schema.#ToolProfile & {
	name:        "supervisor-tools"
	description: "Since the supervisor has different skilled agents at his fingertips it needs only essential tools like the send_message tool or the list_available_agents tool injected by the inter-agent wrapper"

	tools: {
		calculator: schema.#CalculatorToolConfig & {
			enabled: true
		}
	}
	toolsets: {
		project_toolset: schema.#ProjectToolSetConfig & {
			enabled: true
			config: {
				read_only: true
			}
		}
	}
}
