#!/bin/sh
case $1 in
    post-build)
        : "${3:?DEST is unset}"

        case $2 in
            kiss)
                # Skip removal.
            ;;

            *)
                rm -rf \
                    "$3/usr/share/gettext" \
                    "$3/usr/share/polkit-1" \
                    "$3/usr/share/locale" \
                    "$3/usr/share/info" \
                    "$3/usr/lib/charset.alias" \
                    "$3/usr/share/bash-completion" \
                    "$3/usr/share/fish" \
                    "$3"/etc/profile.d/*.csh
            ;;
        esac
    ;;
esac
