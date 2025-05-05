
# 🎮 Deliverable 3: Transferring Games to Raspberry Pi

---

## 🎯 Objective

The purpose of this guide is to explore and explain the different ways to transfer legally owned ROMs and homebrew games to a Raspberry Pi. We will assume that the reader already possesses ROM files and focus purely on transfer methods.

---

## 🔁 Methods of Transferring Games

Below is a comparison of three main transfer methods:

| Method              | Tools Required                   | Skill Level | Network Needed | Speed       |
|---------------------|-----------------------------------|-------------|----------------|-------------|
| SD Card File Copy   | SD Card Reader, PC                | Beginner    | ❌             | Fast        |
| SSH File Transfer   | Raspberry Pi + SSH enabled, PC    | Intermediate| ✅             | Moderate    |
| Web Interface       | Raspberry Pi (RetroPie Web GUI)   | Easy        | ✅             | Moderate    |

---

## 1️⃣ SD Card File Copy

This is the simplest method and requires direct access to the Raspberry Pi’s microSD card using a computer.

### 🧰 Requirements

- SD card reader
- A computer
- File manager (e.g., Windows Explorer, Finder)

### 📝 Steps

1. Shut down your Raspberry Pi.
2. Remove the microSD card.
3. Insert the microSD card into your computer.
4. Navigate to the following directory:

/retropie/roms/

5. Copy your legally owned ROMs into the appropriate folder (e.g., `nes`, `snes`, `gba`).
6. Safely eject the SD card and insert it back into the Raspberry Pi.
7. Power on the Pi. The games should appear in the RetroPie menu.

> 💡 **Tip:** If your system doesn’t show a `/retropie` folder, it may need to be created by first booting the Pi with RetroPie and letting it initialize the file structure.


---

## 2️⃣ SSH File Transfer

SSH allows remote file access. We’ll use an SCP client like **WinSCP** or **Terminal** to transfer ROMs.

### 🧰 Requirements

- SSH enabled on Raspberry Pi
- PC with SSH client (Terminal on macOS/Linux or WinSCP on Windows)
- Raspberry Pi IP address

### 📝 Enable SSH on Raspberry Pi

On your Raspberry Pi:


```sudo raspi-config```

Then navigate through the menu:

Interfacing Options -> SSH -> Enable

📝 Steps (Windows + WinSCP)

    Install WinSCP from:
    https://winscp.net/eng/download.php

    Open WinSCP and configure:

        File protocol: SCP

        Hostname: raspberrypi.local or your Pi’s IP address

        Username: pi

        Password: raspberry (default, change if needed)

    After logging in, navigate to:

    /home/pi/RetroPie/roms/

    Drag and drop your ROMs into the appropriate folder (e.g., nes, snes, etc.)

    Restart your Raspberry Pi to see the new games.

📝 macOS/Linux with Terminal (SCP)

If you are using macOS or Linux, open a terminal and use:

```scp yourgame.rom pi@<raspberrypi_ip>:/home/pi/RetroPie/roms/nes/```

Replace <raspberrypi_ip> with your actual Pi's IP address and yourgame.rom with your actual file name.

## 3️⃣ RetroPie Web Interface


RetroPie includes a simple web manager that lets you upload ROMs using your browser.
### 🧰 Requirements

    Raspberry Pi with RetroPie installed

    Web browser (on the same Wi-Fi network)

    Web Manager enabled

### 📝 Install RetroPie Web Manager

    Open a terminal on your Raspberry Pi and run:

```cd RetroPie-Setup```
```sudo ./retropie_setup.sh```

    Navigate the setup script:

Manage Packages -> Manage core packages -> retropie-manager -> Install from source or binary

    Once installed, start the web manager with:

```sudo systemctl start retropie-manager```

### 📝 Access Web Manager from Browser

    Find your Pi’s IP address:

```hostname -I```

    On your browser, go to:

http://<your_pi_ip>:8000

Replace <your_pi_ip> with your Raspberry Pi's IP.

    Click on the "ROMs" section.

    Choose the console folder and click “Upload ROM”.


---

## 4️⃣ Samba (Network Shared Folders - Windows/macOS)

### 🧰 Requirements

    Raspberry Pi on the same network

    Windows or macOS computer

### 📝 Enable (if needed):

```sudo apt update```
```sudo apt install samba samba-common-bin```

### 📝 From Windows

    Open File Explorer

    Type in address bar:

\\raspberrypi\

    Open roms folder and copy ROMs into it.

### 📝 From macOS

    Open Finder > Go > Connect to Server…

    Enter:

smb://raspberrypi.local

    Login with pi / raspberry, then open roms and copy files.

---

## 5️⃣ FTP File Transfer

### 🧰 Requirements

    Raspberry Pi

    FTP client (e.g., FileZilla)

### 📝 Install FTP server

```sudo apt update```
```sudo apt install vsftpd```

Start the service:

```sudo systemctl start vsftpd```
```sudo systemctl enable vsftpd```

### 📝 Connect via FileZilla

    Host: raspberrypi.local or IP

    Username: pi

    Password: raspberry

    Port: 21

Navigate to:

/home/pi/RetroPie/roms/

And drag your ROMs into the system folder.


---

#### 📌 Notes

    Do not rename or delete default folders inside /roms/.

    After uploading new ROMs, restart the Raspberry Pi.

    Use only legally acquired ROMs or open-source/homebrew games.

#### 🔗 Helpful Links

- [RetroPie Documentation](https://retropie.org.uk/docs/)
- [WinSCP Download](https://winscp.net/eng/download.php)
- [SSH Overview](https://www.raspberrypi.com/documentation/computers/remote-access.html)
- [Filezilla](https://filezilla-project.org/)
- [Samba Ubuntu](https://ubuntu.com/tutorials/install-and-configure-samba#1-overview)


