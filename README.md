# Autopilot Log Collection

This repository contains scripts to automate the collection of Windows Autopilot and Intune diagnostic logs.

## Prerequisites

- A Windows machine
- Administrative privileges

## How to Run

1.  Clone this repository to your local machine.
2.  Navigate to the repository's directory.
3.  Right-click on `runme.bat` and select "Run as administrator".
4.  The script will prompt you to enter the device username.
5.  The script will then collect the logs, download necessary tools, and create a zip file named `<DeviceUsername> <DeviceSerialNumber>.zip` in a `temp` directory.