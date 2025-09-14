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
		// agent_info: {
		// 	type: "array"
		// 	items: {
		// 		type: "object"
		// 		properties: {
		// 			name: {type: "string"}
		// 			role: {type: "string"}
		// 			id: {type: "string"}
		// 			description: {type: "string"}
		// 		}
		// 		required: ["name", "role", "id", "description"]
		// 	}
		// }
	}
	//required: ["tool_info", "agent_info"]
	required: ["tool_info"]
}
