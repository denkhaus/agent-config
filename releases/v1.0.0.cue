package releases

import (
	"github.com/denkhaus/agent-config/compositions/stable"
)

v1_0_0: {
    version: "v1.0.0"
    release_date: "2024-08-29"
    description: "Initial stable release with basic agent configurations"
    
    // Component versions
    components: {
        prompts: "v1.0.0"
        tools: "v1.0.0"
        settings: "v1.0.0"
        compositions: "v1.0.0"
    }
    
    // Available agents in this release
    agents: {
        coder: stable.coder
        project_manager: stable.project_manager
        researcher: stable.researcher
    }
    
    
    // Compatibility matrix
    compatibility: {
        min_go_version: "1.21"
        min_cue_version: "v0.6.0"
        supported_environments: ["development", "production"]
    }
}
