#!/usr/bin/env expect

set email [lindex $argv 0];
set password [lindex $argv 1];

set timeout -1
spawn pgadmin4
expect "Email address:"
send -- "$email\n"
expect "Password:"
send -- "$password\n"
expect "Retype password:"
send -- "$password\n"
expect eof