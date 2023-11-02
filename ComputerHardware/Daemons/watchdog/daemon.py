from watchdog.events import FileSystemEventHandler
from watchdog.observers import Observer

from subprocess import run

WATCH_PATH = "C:\\Users\\HomePC\\Desktop\\ComputerHardwareColleg\\ComputerHardware\\Daemons\\watchdog"

class Monitor(FileSystemEventHandler):
	def __init__(self, *args, **kwargs):
		super().__init__(*args, **kwargs)
		

	def on_modified(self, event):
		print(f"File {event.src_path} has been modified")
		if event.src_path.endswith("main.py"):
			run(["py", "main.py"])


# Create an observer
observer = Observer()

# Register our event 
event_handler = Monitor()

# Schedule the event
observer.schedule(
	event_handler, 
	path=WATCH_PATH, 
	recursive=False)

# start the observer
observer.start()

# Handler the process and stop it
try:
	print("The watchdog is watching...")
	while True:
		pass
except KeyboardInterrupt:
	observer.stop() 


# Join the process
observer.join()