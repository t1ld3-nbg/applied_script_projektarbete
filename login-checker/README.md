LOGIN CHECKER - a project assignment for the course "Applied Script".

PURPOSE

The LOGIN CHECKER logs every user login with time/date, username, terminal, and IP address. \
From a cybersecurity point-of-view this script can help an administrator and/or organizations keep their systems secure and their users accountable.

FUNCTIONALITY 

-Logs SSH and local console, as well as most desktop, logins automatically.
-Saves logs in the /var/log folder.
-Uses PAM to be triggered by each specific login, meaning no constant background loops.

SYSTEM REQUIREMENTS

-Linux OS
-BASH shell
-Root access for the first setup

INSTRUCTIONS

1, Clone and open this repository:
   git clone https://github.com/t1ld3-nbg/applied_script_projektarbete
   cd login-checker

2, Run setup script as root user:
   sudo bash setup_login_checker.sh

3, The LOGIN CHECKER while run continously after setup is complete.

PICTURES OF RUNNING PROCESS

# The setup script
<img width="940" height="735" alt="setup" src="https://github.com/user-attachments/assets/f5272900-eaf9-4d9f-952c-53ead299a0f2" />

# Running setup script and its output
<img width="876" height="75" alt="run-setup" src="https://github.com/user-attachments/assets/32e2bd69-c15c-4533-93a8-6a37c7e3e0d6" />

# What's logged after ssh login
<img width="822" height="110" alt="log" src="https://github.com/user-attachments/assets/fa228d54-82fe-4211-8b78-f49ed4f40194" />

# Login Checker script in /usr/local/bin
<img width="876" height="783" alt="script-in-usr" src="https://github.com/user-attachments/assets/eb4d4203-f875-40f1-b58a-c82e71b7137a" />

# Lines added in /etc/pam.d/ by running the setup script 
<img width="814" height="698" alt="common-session" src="https://github.com/user-attachments/assets/5b62f24f-c76c-484d-b599-e9df5bafb53f" />
<img width="789" height="714" alt="pam d-login" src="https://github.com/user-attachments/<img width="804" height="719" alt="sshd" src="https://github.com/user-attachments/assets/bf5de82e-71c7-417c-8aff-be01a6d21988" />
assets/4e3fa802-c3cb-4195-9433-6ce268f737fd" />
<img width="804" height="719" alt="sshd" src="https://github.com/user-attachments/assets/2f41780f-4857-4a71-9117-c912f406b214" />
