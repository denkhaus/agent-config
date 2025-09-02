package schema

#PromptSchemaDefault: {
		type: "object"
		properties: {
			tool_info: {
				type: "array"
				items: {
					type: "object"
					properties: {
						Name: {type: "string"}
						Description: {type: "string"}
					}
					required: ["Name", "Description"]
				}
			}
			agent_info: {
				type: "array"
				items: {
					type: "object"
					properties: {
						Name: {type: "string"}
						Role: {type: "string"}
						ID: {type: "string"}
						Description: {type: "string"}
					}
					required: ["Name", "Role", "ID", "Description"]
				}
			}
		}
		required: ["tool_info", "agent_info"]
	}
