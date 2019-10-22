from subprocess import call
import sys
from sys import platform as Xplatform

class Git:
    download = ("wget")
    script_link = ("https://raw.githubusercontent.com/Uniminin/Ubuntu-AfterMath/master/installer.sh")

git_get = Git()

def execute():
    call('cd ~ && clear', shell=True)
    call('sudo mkdir UbuntuAfterMath && cd UbuntuAfterMath', shell=True)
    call(f'{git_get.download} {git_get.script_link}', shell=True)
    call('chmod +x installer.sh && ./installer.sh', shell=True)
    sys.exit()

def main():
    if Xplatform == "linux" or Xplatform == "linux2":
        execute()

    else:
        print("This script is not supported on this platform")

main()
