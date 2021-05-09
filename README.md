# ENTERPRISE ETHEREUM PRIVATE-PERMISSIONED NETWORK DEPLOYMENT GUIDE WITH HYPERLEDGER BESU - FILES

In this repository you can find all the necessary files required to deploy an Enterprise Ethereum Private-Permissioned Network with Hyperledger Besu following the instructions on my bachelor's in Computer Science final paper.

#### `get_keys.sh`

+ Bash script used to generate and store public and private keys, node's address and enode.

#### `config/`

+ `genesis.json`: Network configuration (consensus protocol, block time, chainId...).
+ `config.toml`: Node configuration (bootnodes, RPC port, API methods...).
+ `log-config.xml`: Log configuration (log rotation policy).

#### `besu.service`

+ Systemd file that redeploys the Besu node in case VMs reboot.

#### `contracts/`

+ Contains ConsenSys' permissioning smart contracts with the changes made in order to disregard IP and port when permissioning nodes.

#### `prometheus.service`

+ Systemd file that redeploys Prometheus in case VMs reboot.

#### `capybara.service`

+ Systemd file that redeploys Capybara in case VMs reboot.

#### `envoy/`

+ `envoy_config.yaml`: Envoy Proxy configuration.
+ `envoy.service`: Systemd file that redeploys the Envoy Proxy in case VMs reboot.

#### `ansible/`

- playbooks
  - `user-playbook.yaml`: Creates a low privilege that will run the Besu node.
  - `regular-playbook.yaml`: Organizes the node's directories and deploys the Besu node.
  - `envoy-playbook.yaml`: Organizes the Envoy Proxy's directory and it deploys it.

- templates
  - `besu.service`: Systemd file that redeploys the Besu node in case VMs reboot. (Specific for automated deployment)
