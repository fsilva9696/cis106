# Notes 3

## echo

    Definition:
        Used for displaying text on the screen.
    Usage:
        echo + option + string to print
    Example:
        Display/print a line of text:
            echo "hello world"
        Display a line of text with a horizontal tab:
            echo -e "\thello world"
        Display 2 lines of text with a single echo command:
            echo -e "this is line 1\nthis is line 2"
        Display text with no trailing newline:
            echo -n "hello world"
        Display a message with an environment variable:
            echo "User is $USER"

            
            
## date

    Definition:
        Used to display or set the system date and time.
    Usage:
        date + option
    Example:
        Display current date and time:
            date
        Display the date in a custom format:
            date "+%Y-%m-%d %H:%M:%S"
        Display the current date in UTC:
            date -u

## free

    Definition:
        Displays the system's memory usage (RAM and swap space).
    Usage:
        free + option
    Example:
        Display memory usage in kilobytes:
            free
        Display memory usage in human-readable format (MB, GB):
            free -h
        Display memory usage with the total swap memory:
            free -m

## name

    Definition:
        Displays system information.
    Usage:
        uname + option
    Example:
        Display the system's kernel name:
            uname
        Display the system's kernel version:
            uname -r
        Display all system information:
            uname -a

## history

    Definition:
        Displays a list of commands previously entered in the terminal.
    Usage:
        history + option
    Example:
        Display the list of commands entered:
            history
        Display the last 10 commands:
            history 10
        Clear the command history:
            history -c

## man

    Definition:
        Displays the manual pages for commands, providing detailed help on usage.
    Usage:
        man + command
    Example:
        Display the manual page for echo:
            man echo
        Search for a specific term in manual pages:
            man -k "search_term"

## apt

    Definition:
        Package manager for managing software on Debian-based systems (e.g., Ubuntu).
    Usage:
        apt + option + command
    Example:
        Install a package:
            sudo apt install package_name
        Update the package list:
            sudo apt update
        Upgrade installed packages:
            sudo apt upgrade

## snap

    Definition:
        Package management system for installing and managing software on Linux.
    Usage:
        snap + option + command
    Example:
        Install a snap package:
            sudo snap install package_name
        List installed snap packages:
            snap list
        Remove a snap package:
            sudo snap remove package_name

## flatpak

    Definition:
        A system for building, distributing, and running sandboxed desktop applications on Linux.
    Usage:
        flatpak + option + command
    Example:
        Install a flatpak package:
            flatpak install flathub package_name
        List installed flatpak apps:
            flatpak list
        Run a flatpak app:
            flatpak run app_name