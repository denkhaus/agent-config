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
	enabled: bool | *false
	config?: calculator.#ToolConfig
}

#DuckToolConfig: providerConfig.#ToolConfig & {
	enabled: bool | *false
	config?: duck.#ToolConfig
}

#FetchToolConfig: providerConfig.#ToolConfig & {
	enabled: bool | *false
	config?: fetch.#ToolConfig
}

#StateToolConfig: providerConfig.#ToolConfig & {
	enabled: bool | *false
	config?: state.#ToolConfig
}

#TimeToolConfig: providerConfig.#ToolConfig & {
	enabled: bool | *false
	config?: time.#ToolConfig
}

#FileToolSetConfig: providerConfig.#ToolSetConfig & {
	enabled: bool | *false
	config?: file.#ToolSetConfig
}

#ProjectRepositoryTypeInMemory: project.#ProjectRepositoryTypeInMemory
#ProjectRepositoryTypePostgres: project.#ProjectRepositoryTypePostgres

#ProjectToolSetConfig: providerConfig.#ToolSetConfig & {
	enabled: bool | *false
	config?: project.#ToolSetConfig & {
		read_only:       bool | *true
		repository_type: project.#ProjectRepositoryType | *#ProjectRepositoryTypePostgres
		database_url:    "postgres://agents:agents@localhost:6888/agents?sslmode=disable"
	}
}

#ShellToolSetConfig: providerConfig.#ToolSetConfig & {
	enabled: bool | *false
	config?: shell.#ToolSetConfig
}

#TavilyToolSetConfig: providerConfig.#ToolSetConfig & {
	enabled: bool | *false
	config?: tavily.#ToolSetConfig
}
