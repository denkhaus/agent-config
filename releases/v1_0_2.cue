package releases

import (
	"github.com/denkhaus/agent-config/compositions/stable"
)

v1_0_2: {
    version: "v1.0.2"
    release_date: "2025-08-31"
    description: "Release v1.0.2 - Corrected v1.0.1 release file component versions"

    // Component versions
    components: {
        prompts: "v1.0.1"      // Prompts at v1.0.1
        tools: "v1.0.0"        // Tools unchanged
        settings: "v1.0.0"     // Settings unchanged
        compositions: "v1.0.0" // Compositions unchanged
    }

    // Available agents in this release
    agents: {
        coder: stable.coder
        project_manager: stable.project_manager
        researcher: stable.researcher
    }

    // Compatibility matrix
    compatibility: {
        min_go_version: "1.25"
        min_cue_version: "v0.14.1"
        supported_environments: ["development", "production"]
    }
}