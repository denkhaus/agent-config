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