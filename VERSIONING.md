# CUE Version Management

This project now uses Git-based versioning for CUE configurations instead of directory-based versioning.

## Directory Structure

The configuration directory structure has been simplified:

```
config/
├── prompts/           # All prompts (no version subdirectories)
├── settings/          # All settings (no version subdirectories)
├── tools/             # All tools
├── compositions/      # Agent compositions
└── releases/          # Release definitions
```

## Version Management Workflow

### Validating Configurations
```bash
# Validate all CUE configurations
mage cueVersion:validate
```

### Checking Current Version
```bash
# Show current version from Git
mage cueVersion:show
```

### Listing All Versions
```bash
# List all Git tags
mage cueVersion:list
```

### Creating a New Release
```bash
# Create and tag a new release
mage cueVersion:tag v1.1.0
```

## Component Versioning

Each component (prompts, settings, tools, compositions) is versioned independently. When creating a release, only the components that have actually changed should be updated to the new version number, while unchanged components retain their previous version numbers.

Example release file structure:
```cue
v1_0_1: {
    version: "v1.0.1"
    release_date: "2025-08-31"
    description: "Release v1.0.1 - Updated coder prompt"

    // Component versions - only updated changed components
    components: {
        prompts: "v1.0.1"      // Only prompts changed
        tools: "v1.0.0"        // Tools unchanged
        settings: "v1.0.0"     // Settings unchanged
        compositions: "v1.0.0" // Compositions unchanged
    }
    
    // ... rest of release definition
}
```

## Git-based Versioning Benefits

1. **Simpler Structure**: No need to maintain multiple version directories
2. **Clear History**: Version history is tracked in Git
3. **Easy Rollback**: Can easily checkout any previous version
4. **Branching**: Can work on different versions in separate branches
5. **Component Independence**: Each component can be versioned independently

## Release Process

1. Make changes to CUE configurations
2. Validate with `mage cueVersion:validate`
3. Commit changes to Git
4. Create release with `mage cueVersion:tag vX.Y.Z`
5. Push changes and tags to remote repository

Example:
```bash
# 1. Make changes
# Edit your CUE files

# 2. Validate
mage cueVersion:validate

# 3. Commit changes
git add .
git commit -m "Description of changes"

# 4. Create release tag
mage cueVersion:tag v1.1.0

# 5. Push to remote
git push origin main
git push origin v1.1.0
```

## Migration Notes

- Previous version directories (`config/prompts/v1_0`, `config/settings/default`) have been moved to flat structures
- Import paths have been updated to reflect the new structure
- Package names have been standardized