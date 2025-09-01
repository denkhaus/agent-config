package schema

import (
	providerConfig "github.com/denkhaus/agents/pkg/provider/config"
	"github.com/denkhaus/agents/pkg/tools/calculator"
	"github.com/denkhaus/agents/pkg/tools/duck"
	"github.com/denkhaus/agents/pkg/tools/fetch"
	"github.com/denkhaus/agents/pkg/tools/file"
	"github.com/denkhaus/agents/pkg/tools/project"
	"github.com/denkhaus/agents/pkg/tools/shell"
	"github.com/denkhaus/agents/pkg/tools/state"
	"github.com/denkhaus/agents/pkg/tools/tavily"
	"github.com/denkhaus/agents/pkg/tools/time"
)

#ToolProfile: providerConfig.#ToolsConfig

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
