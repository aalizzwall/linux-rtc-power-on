# Set Linux rtc to power-on at every working day morning
## Get Setup shellscript

```bash
$ git clone http://github.com/aalizzwall/linux-rtc-power-on.git
```

## Set crontab

```bash
# vi /etc/crontab
```

```bash
SHELL=/bin/bash
PATH=/sbin:/bin:/usr/sbin:/usr/bin
MAILTO=root

# For details see man 3 crontabs

# Example of job definition:
# .----------------- minute (0 - 59)
# |  .-------------- hour (0 - 23)
# |  |  .----------- day of month (1 - 31)
# |  |  |  .-------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .----- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  *  user-name command to be exectued
30 17 * * 1-5 root shutdown -h now
00 16 * * 1-5 root setrtc
```

## Restart crond service

```bash 
# systemctl restart crond.service
```

## Set Shellscript as a link

```bash 
# ln -s path_to_auto-power-on.sh /usr/bin/setrtc
```
