#!/bin/sh

locked=
unlocked=

printf "%s %s\n" "$locked" "$(nordvpn status | awk '/Current server:*/ {print $3}')"
