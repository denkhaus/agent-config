package schema

import (
	"github.com/denkhaus/agents/pkg/provider/config"
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

#ToolProfile: config.#ToolsConfig

#CalculatorToolConfig: config.#ToolConfig & {
	enabled: bool | *false
	config?: calculator.#ToolConfig
}

#DuckToolConfig: config.#ToolConfig & {
	enabled: bool | *false
	config?: duck.#ToolConfig
}

#FetchToolConfig: config.#ToolConfig & {
	enabled: bool | *false
	config?: fetch.#ToolConfig
}

#StateToolConfig: config.#ToolConfig & {
	enabled: bool | *false
	config?: state.#ToolConfig
}

#TimeToolConfig: config.#ToolConfig & {
	enabled: bool | *false
	config?: time.#ToolConfig
}

#FileToolSetConfig: config.#ToolSetConfig & {
	enabled: bool | *false
	config?: file.#ToolSetConfig
}

#ProjectRepositoryTypeInMemory: project.#ProjectRepositoryTypeInMemory
#ProjectRepositoryTypePostgres: project.#ProjectRepositoryTypePostgres

#ProjectToolSetConfig: config.#ToolSetConfig & {
	enabled: bool | *false
	config?: project.#ToolSetConfig & {
		read_only:       bool | *true
		repository_type: project.#ProjectRepositoryType | *#ProjectRepositoryTypePostgres
		database_url:    "postgres://agents:agents@postgres:5432/agents?sslmode=disable"
	}
}

#ShellToolSetConfig: config.#ToolSetConfig & {
	enabled: bool | *false
	config?: shell.#ToolSetConfig
}

#TavilyToolSetConfig: config.#ToolSetConfig & {
	enabled: bool | *false
	config?: tavily.#ToolSetConfig
}
