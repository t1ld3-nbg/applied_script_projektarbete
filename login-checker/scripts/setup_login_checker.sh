#!/bin/bash
# One-time setup for Login Checker
# Needs sudo to run

LOGIN_CHECKER_SCRIPT="/usr/local/bin/login_checker_script.sh"
LOG_FILE="/var/log/login_checker.log"


# Ask for sudo if needed
if [[ "$EUID" -ne 0 ]]; then
	echo "Kindly run this script using the 'sudo' command."
	exit 1
fi

# Copy login_checker_script to /usr/local/bin/ and make it executable
cp "./login_checker_script.sh" "$LOGIN_CHECKER_SCRIPT"
chown root:root "$LOGIN_CHECKER_SCRIPT"
chmod 700 "$LOGIN_CHECKER_SCRIPT"

# Create and restrict log file
touch "$LOG_FILE"
chown root:root "$LOG_FILE"
chmod 640 "$LOG_FILE"

# PAM hook
PAM_HOOK="session optional pam_exec.so seteuid $LOGIN_CHECKER_SCRIPT"

for PAM_FILE in /etc/pam.d/common-session /etc/pam.d/sshd /etc/pam.d/login; do
	if [[ -f "$PAM_FILE" ]]; then
		grep -qF "$PAM_HOOK" "$PAM_FILE" || echo "$PAM_HOOK" >> "$PAM_FILE"
	fi
done


echo "The one-time setup is completed! Login checker will now automatically log all logins."
