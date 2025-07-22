import os 


print(os.system('uptime'))
print(os.system('df -h'))
print(os.system('free -h'))

# def check_cpu(command):
#     print(os.system(command))


# check_cpu('df -h')

# def check_date(command):
#     print(os.system(command))

def run_command(command):
    print(os.system(command))

run_command('df -h')
run_command('free -h')