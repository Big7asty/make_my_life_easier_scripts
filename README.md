# Scripts

Repo of tools I have built that make life easier, but not worth a dedicated repo

# ap_sync_assist

Allows for quick check of your wireless attack card's channel when in monitor mode, or a quick scan of in range access points when in managed mode. Compatable with AWUS036NHA Alfa card. Works best when copied to /usr/local/bin after making executable. Built to compliment Aircrack-ng suite usage.

# gobusterParser.sh

Takes your target host and appends the urls returned from gobuster dir fuzz with a 200 OK response. Outputs to targetURLs.txt

# Mon-up

Creates either a physical or virtual AP, prompts for channel settings, MAC address preference and brings the interface up.
Works best when copied to /usr/local/bin after making executable.

# Mon-down

Brings the interface down, destroys it if its virtual. Works best when copied to /usr/local/bin after making executable.

# page_open.py

Script for repeating browser requests with a variable string/number within the URL.

# password_gen.py

Simple script for constructing password lists in a definable way for password sprays.

# Installation

All scripts need to be made executable with
  
  `chmod 755 <script name>`

