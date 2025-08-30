package schema

import "strings"

#Prompt: {
    // Core identification
    agent_id: #UUID
    name: string & strings.MinRunes(1) & strings.MaxRunes(100)
    description?: string & strings.MaxRunes(500)

    // Global instruction (from original system)
    global_instruction?: string & strings.MaxRunes(1000)

    // Content validation
    content: string & strings.MinRunes(10) & strings.MaxRunes(50000)

    // JSON Schema for template variables (from original system)
    schema: #JSONSchema
}

#JSONSchema: {
    type: "object"
    properties: {[string]: #JSONSchemaProperty}
    required?: [...string]
}

#JSONSchemaProperty: {
    type: "string" | "number" | "boolean" | "array" | "object"
    items?: #JSONSchemaProperty
    properties?: {[string]: #JSONSchemaProperty}
    required?: [...string]
}
