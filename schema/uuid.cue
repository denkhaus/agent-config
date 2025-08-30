package schema

// UUID type definition for consistent usage
#UUID: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
#Version: string & =~"^v[0-9]+\\.[0-9]+\\.[0-9]+(-[a-zA-Z0-9]+)?$"
