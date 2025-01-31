# Linux Server Performance Stats

A script to analyse basic linux server performance stats. The project idea is taken from [roadmap.sh](https://roadmap.sh/projects/server-stats).

## Quickstart

1. Clone the repository.
   
   ```sh
   git clone https://github.com/akemoon/server-stats.git
   cd server-stats
   ```

2. Make sure the script is executable.

   ```sh
   chmod +x server-stats.sh
   ```

3. Execute it.

   ```sh
   ./server-stats.sh
   ```

## Example program output

```
---------\ SERVER STATS

 > Uptime: up 3 minutes

 > CPU usage: 3%

 > Memory usage: 6% (230MB/4114MB)

 > Disk usage: 6% (1.9G/32G)      

 > Top 5 by CPU usage:
   USER         PID %CPU COMMAND
   root         648  6.5 snapd
   root           1  3.3 systemd
   root           9  0.3 kworker/u4:0-events_unbound
   root         395  0.2 systemd-journal
   root          14  0.1 rcu_sched

 > Top 5 by memory usage:
   USER         PID %MEM COMMAND
   root         648  1.1 snapd
   root         437  0.6 multipathd
   root         699  0.5 unattended-upgr
   root        1869  0.5 packagekitd
   root         645  0.4 networkd-dispat
```
