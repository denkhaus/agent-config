package schema

import "strings"

#Agent: {
    // Core identification
    agent_id: #UUID
    name: string & strings.MinRunes(1) & strings.MaxRunes(100)
    description?: string & strings.MaxRunes(500)
    version: #Version

    // Agent type
    type: "default" | "chain" | "cycle" | "parallel" | *"default"

    // Component references
    prompt: #PromptRef
    settings: #SettingsRef
    tools: #ToolsRef
}

#PromptRef: {
    source: #Prompt
    version: #Version
    overrides?: {...}
}

#SettingsRef: {
    source: #Settings
    version: #Version
    overrides?: {...}
}

#ToolsRef: {
    source: #ToolProfile
    version: #Version
    overrides?: {
        tools?: {[string]: #ToolConfig}
        toolsets?: {[string]: #ToolSetConfig}
    }
}


