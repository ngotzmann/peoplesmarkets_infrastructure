# peoplesmarkets.com - Infrastructure

## Development

### Linting & static security analyser

Both the linter and the static security analyser are running on each push on the github actions pipeline.  

* As linter [ansible-lint](https://ansible.readthedocs.io/projects/lint/) is used. For installation documentation see [ansible lint installing](https://ansible.readthedocs.io/projects/lint/)
  * Just run `ansible-lint`

* To check if there are any passwords, tokens... hardcoded, [kics](https://kics.io/index.html) is used to ensure a secure IaC repository.  
  * Run it locally `docker run -t -v $PWD:/path checkmarx/kics:latest scan -p /path -o "/path/"`

## [Provisioning](./provisioning/)

## Playbooks

### Service Cluster

#### [1: Configuring host systems](./playbooks/host/)

#### [2: Public Gateway (proxy)](./playbooks/public_gateway/)

#### [3: Vault](./playbooks/vault/)

#### [4: Consul](./playbooks/consul/)

#### [5: Nomad](./playbooks/nomad/)

### Monitoring

#### [1: Allocation logs](./playbooks/logging/)

### Databases

#### [1: Cockroach](./playbooks/cockroach/)

### Auth

#### [1: Zitadel](./playbooks/zitadel/)
