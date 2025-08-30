package constants

import "github.com/denkhaus/agent-config/schema"

AgentIDHuman: schema.#UUID & "550e8400-e29b-41d4-a716-665544332211"
AgentIDSupervisor: schema.#UUID & "550e8400-e29b-41d4-a716-446655440000"
AgentIDCoder: schema.#UUID & "550e8400-e29b-41d4-a716-446655440001"
AgentIDDebugger: schema.#UUID & "550e8400-e29b-41d4-a716-446655440002"
AgentIDProjectManager: schema.#UUID & "550e8400-e29b-41d4-a716-446655440003"
AgentIDResearcher: schema.#UUID & "550e8400-e29b-41d4-a716-446655440004"
