# Read system health check
path "sys/health" {
  capabilities = ["read", "sudo"]
}

# Create and manage ACL policies broadly across Vault

# List existing policies
path "sys/policies/acl" {
  capabilities = ["list"]
}

# Create and manage ACL policies
path "sys/policies/acl/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Enable and manage authentication methods broadly across Vault

# Manage auth methods broadly across Vault
path "auth/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update and delete auth methods
path "sys/auth/*" {
  capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "sys/auth" {
  capabilities = ["read"]
}

# Manage secrets engines
path "sys/mounts/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List existing secrets engines.
path "sys/mounts" {
  capabilities = ["read"]
}

# List, create, update and delete key/value secrets
path "kv/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List, create, update and delete root pki secrets
path "pki/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List, create, update and delete intermediate secrets
path "pki-int/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List, create, update and delete database secrets
path "database/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List, create, update and delete consul secrets
path "consul/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List, create, update and delete nomad secrets
path "nomad/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
