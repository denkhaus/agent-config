package environments

import "github.com/denkhaus/agent-config/compositions/experimental"

production: {
    environment: "production"
    version: "v1.0.0"
    description: "Production environment configuration"

    agents: {
        // Chain agent example
        development_coordinator: experimental.development_coordinator

        // Cycle agent example
        research_development_cycle: experimental.research_development_cycle

        // Parallel agent example
        parallel_research_development: experimental.parallel_research_development
    }
}
