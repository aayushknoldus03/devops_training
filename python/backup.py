import shutil
import datetime
import os

def backup_file(source,destination):
    today_date = datetime.date.today()
    backup_folder = os.path.join(destination,f"backup_{today_date}")
    shutil.make_archive(backup_folder,'gztar',source)


source = "/home/nashtech/devops-training/python"
destination = "/home/nashtech/devops-training/pythonbackup"
backup_file(source,destination)