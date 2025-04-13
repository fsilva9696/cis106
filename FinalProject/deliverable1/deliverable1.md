# Deliverable 1 

 

## What is a Raspberry Pi? 

 

The Raspberry Pi is a small, affordable single-board computer developed in the UK by the Raspberry Pi Foundation. It is widely used for educational purposes, DIY projects, and prototyping. 


![alt text](image.png)

 

### Raspberry Pi Models 

 

| Model          | CPU                         | RAM Options | USB Ports | Video Output     | Release Year | 

|----------------|-----------------------------|-------------|-----------|------------------|--------------| 

| Raspberry Pi 1 | ARM1176JZF-S (700 MHz)      | 256–512 MB  | 2 USB 2.0 | HDMI, Composite  | 2012         | 

| Raspberry Pi 2 | Quad-core Cortex-A7 (900 MHz)| 1 GB       | 4 USB 2.0 | HDMI, Composite  | 2015         | 

| Raspberry Pi 3 | Quad-core Cortex-A53 (1.2 GHz)| 1 GB      | 4 USB 2.0 | HDMI             | 2016         | 

| Raspberry Pi 4 | Quad-core Cortex-A72 (1.5 GHz)| 2–8 GB    | 2x USB 2.0, 2x USB 3.0 | 2x micro-HDMI | 2019         | 

| Raspberry Pi 5 | Quad-core Cortex-A76 (2.4 GHz)| 4–8 GB    | 2x USB 2.0, 2x USB 3.0 | 2x micro-HDMI | 2023         | 

 

### Origins of the Raspberry Pi 

 

The Raspberry Pi was developed by the Raspberry Pi Foundation, a UK-based charity, to promote computer science education. The goal was to create an affordable computer for learning and experimentation. 

 

--- 

 

## What is Batocera? 

 

Batocera.linux is a Linux-based operating system focused on emulation and retro gaming. It comes pre-configured with a wide variety of emulators and a user-friendly interface. 

 

**Website:** [https://batocera.org](https://batocera.org) 

 

### Alternatives to Batocera 

 

- **RetroPie** - Based on Raspbian, widely used on Raspberry Pi. 

- **Recalbox** - Similar to Batocera with a strong user community. 

- **Lakka** - Lightweight Linux distro that turns a small computer into a full retro gaming console. 

 

--- 

 

## What is Emulation? 

 

Emulation refers to mimicking the hardware and software behavior of one system on a different system. Emulators allow modern computers to run software originally designed for other platforms, such as game consoles. 

 

### Is Emulation Legal in the U.S.? 

 

Emulation itself is legal in the United States. However, downloading ROMs of games you do not own may violate copyright laws. 


 

**Opinion:** Emulation should be legal as it preserves digital history and gives access to games no longer commercially available. 

 More here --> https://www.mcneelylaw.com/understanding-the-legal-landscape-of-video-game-emulation/

--- 

 

## What is SSH? 

 

SSH (Secure Shell) is a cryptographic network protocol for securely accessing and managing devices remotely over an unsecured network. 

 

### SSH Command Examples 

 

```bash 

# Generate SSH key pair 

ssh-keygen 

 

# Connect to remote server 

ssh username@ip-address 

 

# Copy a file to remote server 

scp file.txt username@ip-address:/path/to/destination 

``` 

 

### Connect to VM from Windows using SSH 

 

1. Open **Command Prompt** or **PowerShell**. 

2. Use the following command: 

 

```bash 

ssh username@VM-IP-Address 

``` 

 

Replace `username` and `VM-IP-Address` with your VM credentials. 

 

--- 

 

## What is an IP Address? 

 

An IP address is a unique identifier for a device on a network. 

 

### IPv4 

 

- 32-bit numeric address. 

- Example: `192.168.1.1` 

- Supports ~4.3 billion devices. 

 

### IPv6 

 

- 128-bit hexadecimal address. 

- Example: `2001:0db8:85a3:0000:0000:8a2e:0370:7334` 

- Supports a vastly larger number of devices. 

 

--- 

 

## What is a ROM? (In the context of gaming) 

 

A ROM (Read-Only Memory) is a digital copy of a video game cartridge or disc. ROMs are used with emulators to play games originally designed for consoles like SNES, Sega Genesis, or PlayStation. 

 