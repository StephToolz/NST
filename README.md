# 🌐 Network Statistics Tool (Network.bat)


# ⚠️ Disclaimer
This project is for educational purposes only. It is designed to demonstrate how system commands can be automated and filtered using Batch scripts to provide real-time network insights. Use it to monitor your own network health and understand the underlying Windows networking utilities.

# 🛠️ Project Overview

Network.bat is a lightweight, real-time network monitor that runs in a compact CMD window. It is designed to stay on the side of your screen while gaming or on a call, providing instant feedback on your connection quality without the need for heavy external software.
The tool automates several core Windows networking commands and uses advanced string filtering to present only the most relevant data.
# Key Features
Wi-Fi Diagnostics: Real-time monitoring of your SSID, Network Adapter name, and connection State.
Signal Integrity: Displays current Signal Strength and the active broadcast Channel.
Performance Metrics: Tracks Ping (Latency) to Google DNS (8.8.8.8) to measure connection stability.
Reliability Tracking: Calculates Packet Loss by analyzing sequences of ICMP requests.
Traffic Monitoring: Shows real-time Bytes Received and Bytes Sent to track data usage and speed.
# ⚙️ How It Works (Technical Details)

The script is built entirely in Batch and leverages the following mechanisms:
Data Extraction: It uses netsh wlan show interface for wireless data, ping for latency, and netstat -e for traffic statistics.
Advanced Filtering: To extract specific values (like just the signal percentage), the script uses for /f loops with custom tokens and delimiters. This is a critical skill for batch automation.
Optimization: The tool uses a controlled loop with the CLS (Clear Screen) command positioned specifically to provide a smooth, flicker-free update experience.
UI Design: The window is automatically resized using the mode command (38x20) to fit perfectly in the corner of your workspace.
# 🚀 Usage Instructions

Clone the Repository: Download Network.bat to your local machine.
Run the Script: Simply double-click the file. (No administrator privileges are required for standard monitoring).
Interpretation:
If Signal drops, check for physical interference or distance from the router.
If Packet Loss is detected, it may indicate network congestion or hardware issues.
# 🛡️ Educational Insight
Building this tool helps in understanding how Windows handles network interfaces. By filtering raw CLI output, you learn how to handle data programmatically—a skill directly transferable to penetration testing and network administration.
