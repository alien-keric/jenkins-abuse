# jenkins-abuse

```
Jenkins is a leading open source automation server for deploying and automating any project. In order to abuse jenkins groovy web console to get a shell

here are the steps toward exploitations


Step 1: Open the web browser and navigate to Jenkins web UI.

Step 2: Navigate to the “Manage Jenkins” section.

Step 3: Click on “Script Console” to open the Groovy Script console.


This console allows a user or attacker to run commands for automation and reporting using a groovy script. By exploiting this privilege, the attacker can use some simple scripts to get a reverse shell session back to the attacker machine.

example of reverse shell:
payload.sh


Step 5: Paste this script in the console and click "Run" button

Step 6: Start Netcat listener on the Attacker machine.
command: nc -nlvp 1234

And after some few second you will get the reverse shell
```
