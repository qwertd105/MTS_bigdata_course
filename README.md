# HDFS cluster deployment (NameNode + SecondaryNameNode + 3 DataNode) via Ansible

## Topology
- jn (192.168.10.52) — SecondaryNameNode + DataNode (also entry host via 178.236.25.104)
- nn (192.168.10.28) — NameNode
- dn-00 (192.168.10.26) — DataNode
- dn-01 (192.168.10.27) — DataNode

Replication factor: 3.

## How to run (from jn)
1) SSH to entry host:
   `ssh -i <your_key> ubuntu@178.236.25.104`

2) Install tools:
   `sudo apt update && sudo apt install -y ansible sshpass git`

3) Run:
   `ansible-playbook site.yml`

## Logs


![Screenshot 2026-02-25 at 02.00.47](logs/Screenshot%202026-02-25%20at%2002.00.47.png)

![Screenshot 2026-02-25 at 02.00.59](logs/Screenshot%202026-02-25%20at%2002.00.59.png)

![Screenshot 2026-02-25 at 02.02.46](logs/Screenshot%202026-02-25%20at%2002.02.46.png)

![Screenshot 2026-02-25 at 02.03.29](logs/Screenshot%202026-02-25%20at%2002.03.29.png)

![Screenshot 2026-02-25 at 02.04.11](logs/Screenshot%202026-02-25%20at%2002.04.11.png)
