import keyboard
import subprocess
import os
import sys

def kill_slippi():
    try:
        subprocess.run(['taskkill', '/f', '/im', 'slippi dolphin.exe'], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    except Exception as e:
        pass  # Fail silently

def main():
    keyboard.add_hotkey('num 8', kill_slippi)
    keyboard.wait()  # Keeps the script running

if __name__ == '__main__':
    main()
