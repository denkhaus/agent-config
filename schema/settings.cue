package schema

import "strings"

#Settings: {
    // Core identification
    agent_id: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
    name: string & strings.MinRunes(1) & strings.MaxRunes(100)
    description?: string & strings.MaxRunes(500)
    
    // Agent settings
    agent: #AgentSettings
}

#AgentSettings: {
    application_name: string
    planning_enabled?: bool | *false
    react_enabled?: bool | *false
    max_iterations?: int & >0 & <=100 | *10
    timeout?: int & >0 & <=3600 | *300
    
    // LLM settings
    llm?: #LLMSettings
}

#LLMSettings: {
    model?: string
    temperature?: number & >=0 & <=2 | *0.7
    max_tokens?: int & >0 & <=100000 | *4000
    top_p?: number & >=0 & <=1 | *1.0
    frequency_penalty?: number & >=-2 & <=2 | *0.0
    presence_penalty?: number & >=-2 & <=2 | *0.0
}

