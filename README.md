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

### YARN components placement
- ResourceManager: `nn` (192.168.10.28)
- JobHistoryServer: `nn` (192.168.10.28)
- NodeManagers: `jn` (192.168.10.52), `dn-00` (192.168.10.26), `dn-01` (192.168.10.27)


## Logs and screenshots of UI for HW2

1. ![Screenshot 2026-03-04 at 02.35.27](./yarn_logs/Screenshot%202026-03-04%20at%2002.35.27.png)
2. ![Screenshot 2026-03-04 at 02.36.13](./yarn_logs/Screenshot%202026-03-04%20at%2002.36.13.png)
3. ![Screenshot 2026-03-04 at 02.36.28](./yarn_logs/Screenshot%202026-03-04%20at%2002.36.28.png)
4. ![Screenshot 2026-03-04 at 02.36.52](./yarn_logs/Screenshot%202026-03-04%20at%2002.36.52.png)
5. ![Screenshot 2026-03-04 at 02.46.57](./yarn_logs/Screenshot%202026-03-04%20at%2002.46.57.png)
6. ![Screenshot 2026-03-04 at 02.47.30](./yarn_logs/Screenshot%202026-03-04%20at%2002.47.30.png)
7. ![Screenshot 2026-03-04 at 02.48.30](./yarn_logs/Screenshot%202026-03-04%20at%2002.48.30.png)
8. ![Screenshot 2026-03-04 at 02.48.37](./yarn_logs/Screenshot%202026-03-04%20at%2002.48.37.png)
9. ![Screenshot 2026-03-04 at 02.49.32](./yarn_logs/Screenshot%202026-03-04%20at%2002.49.32.png)


## Logs HW1


![Screenshot 2026-02-25 at 02.00.47](logs/Screenshot%202026-02-25%20at%2002.00.47.png)

![Screenshot 2026-02-25 at 02.00.59](logs/Screenshot%202026-02-25%20at%2002.00.59.png)

![Screenshot 2026-02-25 at 02.02.46](logs/Screenshot%202026-02-25%20at%2002.02.46.png)

![Screenshot 2026-02-25 at 02.03.29](logs/Screenshot%202026-02-25%20at%2002.03.29.png)

![Screenshot 2026-02-25 at 02.04.11](logs/Screenshot%202026-02-25%20at%2002.04.11.png)
