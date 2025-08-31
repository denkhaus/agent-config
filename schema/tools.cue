package schema

import (
	providerConfig "github.com/denkhaus/agents/pkg/provider/config"
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

// Use the ToolsConfig type from pkg/provider/config
#ToolProfile: providerConfig.#ToolsConfig

// Individual Tool Configurations - extend base ToolConfig with specific schemas
#CalculatorToolConfig: providerConfig.#ToolConfig & {
	config?: calculator.#ToolConfig
}

#DuckToolConfig: providerConfig.#ToolConfig & {
	config?: duck.#ToolConfig
}

#FetchToolConfig: providerConfig.#ToolConfig & {
	config?: fetch.#ToolConfig
}

#StateToolConfig: providerConfig.#ToolConfig & {
	config?: state.#ToolConfig
}

#TimeToolConfig: providerConfig.#ToolConfig & {
	config?: time.#ToolConfig
}

// ToolSet Configurations - extend base ToolSetConfig with specific schemas
#FileToolSetConfig: providerConfig.#ToolSetConfig & {
	config?: file.#ToolSetConfig
}

#ProjectToolSetConfig: providerConfig.#ToolSetConfig & {
	config?: project.#ToolSetConfig
}

#ShellToolSetConfig: providerConfig.#ToolSetConfig & {
	config?: shell.#ToolSetConfig
}

#TavilyToolSetConfig: providerConfig.#ToolSetConfig & {
	enabled: bool | *false
	config?: tavily.#ToolSetConfig
}
