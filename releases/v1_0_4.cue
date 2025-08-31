package releases

import (
	"github.com/denkhaus/agent-config/compositions/stable"
)

v1_0_4: {
    version: "v1.0.4"
    release_date: "2025-08-31"
    description: "Release v1.0.4"

    // Component versions - set independently based on actual changes
    components: {
        prompts: "v1.0.4"
        tools: "v1.0.4"
        settings: "v1.0.4"
        compositions: "v1.0.4"
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
