package schema

import "strings"

#ToolProfile: {
    // Core identification
    name: string & strings.MinRunes(1) & strings.MaxRunes(100)
    description?: string & strings.MaxRunes(500)
    
    // Tool configurations
    tools: {[string]: #ToolConfig}
    toolsets: {[string]: #ToolSetConfig}
}

#ToolConfig: {
    enabled: bool
    config?: {...}
}

#ToolSetConfig: {
    enabled: bool
    config?: {...}
}

