#!/bin/sh
num=$(checkupdates | wc -l)

if [ $num -gt 0 ]; then
    awesome client 'naughty = require("naughty")
        local title = "Pacman"
        local message 
            = "'"$num"' packages can be upgraded"
        local icon 
            = "~/.config/awesome/scripts/icon.svg"
        local timeout = "5"

        if mode == "update" then
            for k, n in ipairs(naughty.active) do
                if n.title == title then
                -- naughty.destroy(n, "aaa")
                n.text = message
                return
                end
            end
        end

        naughty.notification({
            title = title,
            message = message,
            icon = icon,
            timeout = timeout
        })
    '
fi
