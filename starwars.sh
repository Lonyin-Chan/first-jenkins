#!/usr/bin/expect
spawn telnet towel.blinkenlights.nl
expect {
    "Escape character is '^]'." {
        send_user "\nConnected!\n"
        interact
    }
    timeout {
        send_user "\nConnection timed out\n"
        exit
    }
}
