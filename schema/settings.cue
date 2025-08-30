package schema

import "strings"

#Settings: {
    // Core identification
    agent_id: #UUID
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
    streaming_enabled?: bool | *false
    channel_buffer_size?: int & >=0 & <=1000 | *0

    // LLM settings
    llm?: #LLMSettings

    // Fields specific to different agent types
    sub_agents?: [...#UUID]  // UUIDs of sub-agents
    input_schema?: {...}
    output_schema?: {...}
    output_key?: string
}

#LLMSettings: {
    model?: string
    temperature?: number & >=0 & <=2 | *0.7
    max_tokens?: int & >0 & <=100000 | *4000
    top_p?: number & >=0 & <=1 | *1.0
    frequency_penalty?: number & >=-2 & <=2 | *0.0
    presence_penalty?: number & >=-2 & <=2 | *0.0
    provider?: "openai" | "anthropic" | "azure" | *"openai"
    base_url?: string
    api_key?: string
    channel_buffer_size?: int & >=0 & <=1000 | *0
}
