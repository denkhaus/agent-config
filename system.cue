package config

import (
	"github.com/denkhaus/agent-config/schema"
	envs "github.com/denkhaus/agent-config/compositions/environments"
)

system: schema.#SystemConfig & {
	environments: {
		development: envs.development
		production:  envs.production
		experiment:  envs.experiment
	}
}