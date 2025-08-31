package schema

import (
	"strings"
	calculator "github.com/denkhaus/agents/pkg/tools/calculator"
	duck "github.com/denkhaus/agents/pkg/tools/duck"
	fetch "github.com/denkhaus/agents/pkg/tools/fetch"
	file "github.com/denkhaus/agents/pkg/tools/file"
	project "github.com/denkhaus/agents/pkg/tools/project"
	shell "github.com/denkhaus/agents/pkg/tools/shell"
	state "github.com/denkhaus/agents/pkg/tools/state"
	tavily "github.com/denkhaus/agents/pkg/tools/tavily"
	time "github.com/denkhaus/agents/pkg/tools/time"
)

#ToolProfile: {
	// Core identification
	name:         string & strings.MinRunes(1) & strings.MaxRunes(100)
	description?: string & strings.MaxRunes(500)

	// Tool configurations
	tools: {[string]: #ToolConfig}
	toolsets: {[string]: #ToolSetConfig}
}

// Individual Tool Configurations
#CalculatorToolConfig: {
	enabled: bool | *true
	config?: calculator.#ToolConfig
}

#DuckToolConfig: {
	enabled: bool | *true
	config?: duck.#ToolConfig
}

#FetchToolConfig: {
	enabled: bool | *true
	config?: fetch.#ToolConfig
}

#StateToolConfig: {
	enabled: bool | *true
	config?: state.#ToolConfig
}

#TimeToolConfig: {
	enabled: bool | *true
	config?: time.#ToolConfig
}

// ToolSet Configurations
#FileToolSetConfig: {
	enabled: bool | *true
	config?: file.#ToolSetConfig
}

#ProjectToolSetConfig: {
	enabled: bool | *true
	config?: project.#ToolSetConfig
}

#ShellToolSetConfig: {
	enabled: bool | *true
	config?: shell.#ToolSetConfig
}

#TavilyToolSetConfig: {
	enabled: bool | *false
	config?: tavily.#ToolSetConfig
}

// Generic fallback configurations
#ToolConfig: {
	enabled: bool | *true
	config?: {...}
}

#ToolSetConfig: {
	enabled: bool | *true
	config?: {...}
}
