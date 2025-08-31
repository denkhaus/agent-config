package releases

import (
	"github.com/denkhaus/agent-config/compositions/stable"
)

v1_0_1: {
    version: "v1.0.1"
    release_date: "2025-08-31"
    description: "Release v1.0.1 - Updated coder prompt description"

    // Component versions
    components: {
        prompts: "v1.0.1"      // Only prompts changed
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
