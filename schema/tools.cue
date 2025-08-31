package schema

import (
	"strings"
	tavily "github.com/denkhaus/agents/pkg/tools/tavily"
)

#ToolProfile: {
	// Core identification
	name:         string & strings.MinRunes(1) & strings.MaxRunes(100)
	description?: string & strings.MaxRunes(500)

	// Tool configurations
	tools: {[string]: #ToolConfig}
	toolsets: {[string]: #ToolSetConfig}
}

#ToolConfig: {
	enabled: bool | *true
	config?: {...}
}

#TavilyToolSetConfig: {
	enabled: bool | *false
	config?: tavily.#TavilyToolSet
}

#ToolSetConfig: {
	enabled: bool | *true
	config?: {...}
}
