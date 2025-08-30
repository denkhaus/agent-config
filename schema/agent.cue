package schema

import "strings"

#Agent: {
    // Core identification
    agent_id: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
    name: string & strings.MinRunes(1) & strings.MaxRunes(100)
    description?: string & strings.MaxRunes(500)
    version: string & =~"^v[0-9]+\\.[0-9]+\\.[0-9]+(-[a-zA-Z0-9]+)?$"
    
    // Component references
    prompt: #PromptRef
    settings: #SettingsRef
    tools: #ToolsRef
    
}

#PromptRef: {
    source: string
    version: string
    overrides?: {...}
}

#SettingsRef: {
    source: string
    version: string
    overrides?: {...}
}

#ToolsRef: {
    source: string
    version: string
    overrides?: {
        tools?: {[string]: #ToolConfig}
        toolsets?: {[string]: #ToolSetConfig}
    }
}

#ToolConfig: {
    enabled: bool
    config?: {...}
}

#ToolSetConfig: {
    enabled: bool
    config?: {...}
}

