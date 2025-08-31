package schema

import "strings"

#ToolProfile: {
	// Core identification
	name:         string & strings.MinRunes(1) & strings.MaxRunes(100)
	description?: string & strings.MaxRunes(500)

	// Tool configurations
	tools: {[string]: #ToolConfig}
	toolsets: {[string]: #ToolSetConfig}
}

#ToolConfig: {
	enabled: bool | *true
	config?: {...}
}

#TavilyToolConfig: {
	enabled: bool | *false
	config?: {
		api_key:         string
		search_enabled:  bool | *true
		crawl_enabled:   bool | *true
		extract_enabled: bool | *true
		map_enabled:     bool | *true
	}
}

#ToolSetConfig: {
	enabled: bool | *true
	config?: {...}
}
