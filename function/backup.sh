#!/bin/bash
echo "backup tool create'
BACKUP_DIR="/tmp/backup_$(date +%Y%m%d_%H%M%S)"
LOG_FILE="/tmp/backup.log"
log() {
	echo "[$(date '+%H:%M:%S')] $1" | tee -a $LOG_FILE
}
backup_dir() {
	local dir=$1
	local name=$(basename $dir)
	if [ -d "$dir" ]; then
		log "Backup running: $dir"
		cp -r "$dir" "$BACKUP_DIR/$name"
		return 0
	else
		log "Issues found: $dir not found"
		return 1
		fi
	}
	check_space() {
		local available=$(df -h/tmp | awk 'NR==2 {print $4}')
		log "Temps files found: $available"
	}
	cleanup_old() {
		local days=7
		log "$days temp files delete..."
		find /tmp -name "backup_*" -type d -mtime +$days -exec rm -rf {}
	}
	show_menu() {
		clear
		echo "========================================="
		echo "backup tool v1.0"
		echo "========================================="
		echo "1. /etc Dir backup"
		echo "2. /home Dir backup"
		echo "3. /var/log Dir backup"
		echo "4. All Dir Backup"
		echo "5. Backup List"
		echo "6.Old backup cleanup"
		echo "7. Exit"
		echo "==========================================="
	}
	main() {
		log "backup tool starting"
		check_space
		while true; do
			show_menu
			echo -e "type between 1 to 7"
			read choice
			case $choice in
				1)
					mkdir -p $BACKUP_DIR
					backup_dir "/etc"
					log "Backup done: $BACKUP_DIR"
					;;
				2)
					mkdir -p $BACKUP_DIR
					backup_dir "/home"
					log "Backup Done: $BACKUP_DIR"
					;;
				3)
					mkdir -p $BACKUP_DIR
					backup_dir "/var/log"
					log "Backup done: $BACKUP_DIR"
					;;
				4)
					mkdir -p $BACKUP_DIR
					backup_dir "/etc"
					backup_dir "/home"
					backup_dir "/var/log"
					log "all backup done: $BACKUP_DIR"
					;;
				5)
					echo " "
					echo "Backup Dir List: "
					ls -la /tmp/ | grep backup_
					echo " "
					echo "log file: "
					cat $LOG_FILE 2>/dev/null || echo "no log found"
					;;
				6)
					cleanup_old
					;;
				7)
					log "backup tool close"
					echo "thanks by by"
					break
					;;
				*)
					echo "wrong choice 1-7 choose"
					sleep 1
					;;
			esac
			echo " "
			echo "Enter press..."
		done
	}
