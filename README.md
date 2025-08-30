# Agent Configuration Repository

This repository contains CUE-based configurations for AI agents, providing a type-safe, composable, and versionable approach to agent management.

## Repository Structure

```
├── schema/                 # CUE schemas for validation
│   ├── agent.cue          # Agent composition schema
│   ├── prompt.cue         # Prompt schema with validation
│   ├── tools.cue          # Tool profile schema
│   └── settings.cue       # Agent settings schema
├── prompts/               # Versioned prompt definitions
│   └── v1.0/             # Version 1.0 prompts
├── tools/                 # Tool configurations
│   └── profiles/         # Tool profiles for different agent types
├── settings/              # Agent settings
│   └── default/          # Default settings
├── compositions/          # Agent compositions
│   ├── stable/           # Stable agent compositions
│   └── environments/     # Environment-specific overrides
└── releases/             # Versioned releases
    └── v1.0.0.cue       # Release v1.0.0
```

## Available Agents (v1.0.0)

### 🔧 Coder Agent
- **ID**: `550e8400-e29b-41d4-a716-446655440001`
- **Purpose**: Software development with coordination protocols
- **Tools**: File management, Shell execution, Calculator, Time
- **Coordination**: Must contact project-manager before coding

### 📋 Project Manager Agent  
- **ID**: `550e8400-e29b-41d4-a716-446655440003`
- **Purpose**: Project management and team coordination
- **Tools**: Project management, Read-only file access, Calculator, Time
- **Role**: Coordinates development tasks and project planning

### 🔍 Researcher Agent
- **ID**: `550e8400-e29b-41d4-a716-446655440004`
- **Purpose**: Information gathering and research
- **Tools**: Web search (Tavily, DuckDuckGo), Fetch, Read-only files, Calculator, Time
- **Capabilities**: Multi-source research with citation support

## Usage

### Validate Configurations
```bash
# Validate all configurations
cue vet ./...

# Validate specific component
cue vet ./prompts/v1.0/... ./schema/prompt.cue
```

### Export Agent Configuration
```bash
# Export production configuration for coder agent
cue export ./compositions/environments/production.cue -e production.agents.coder

# Export development configuration
cue export ./compositions/environments/development.cue -e development.agents.researcher
```

### Environment Variables
Some configurations require environment variables:

```bash
# For Tavily search in production
export PROD_TAVILY_KEY="your-tavily-api-key"

# Export with environment injection
cue export ./compositions/environments/production.cue -t prod_tavily_key=$PROD_TAVILY_KEY
```

## Versioning

This repository uses semantic versioning with Git tags:

- **v1.0.0**: Initial stable release
- **v1.x.x**: Backward-compatible updates
- **v2.x.x**: Breaking changes

### Release Process
1. Create configurations in feature branches
2. Validate with `cue vet`
3. Test in development environment
4. Create release in `releases/vX.Y.Z.cue`
5. Tag with `git tag vX.Y.Z`

## Schema Validation

All configurations are validated against CUE schemas:

- **Type Safety**: UUID validation, version format checking
- **Content Validation**: Prompt length limits, required fields
- **Cross-Validation**: Coordination consistency, variable usage
- **Environment Constraints**: Valid environment names, tool compatibility

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make changes and validate with `cue vet`
4. Test in development environment
5. Submit pull request

## License

This configuration repository is part of the Denkhaus AI Agent system.