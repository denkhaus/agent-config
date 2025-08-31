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

## Git-based Versioning Benefits

1. **Simpler Structure**: No need to maintain multiple version directories
2. **Clear History**: Version history is tracked in Git
3. **Easy Rollback**: Can easily checkout any previous version
4. **Branching**: Can work on different versions in separate branches

## Migration Notes

- Previous version directories (`config/prompts/v1_0`, `config/settings/default`) have been moved to flat structures
- Import paths have been updated to reflect the new structure
- Package names have been standardized