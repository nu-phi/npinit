# This file should be sourced from your Nushell configuration file.
#
# Copyright 2014-2020 Simon Edwards <simon@simonzone.com>
#
# This source code is licensed under the MIT license which is detailed in the LICENSE.txt file.
#

let null = []
# Early-out if LC_EXTRATERM_COOKIE is not set
if ($env.LC_EXTRATERM_COOKIE == $null) {
    exit
}

# Early-out if not an interactive terminal
if ($env.TERM =~ 'screen') {
    $env.LC_EXTRATERM_COOKIE = $null
    exit
}

if ($env.TERM == $null) {
    $env.LC_EXTRATERM_COOKIE = $null
    exit
}

echo "Setting up Extraterm support."

# Put our enhanced commands at the start of the PATH.
let filedir = ($nu.config-path | path dirname)
if ($filedir | str starts-with "/") {
    $env.PATH = "$filedir;$env.PATH"
} else {
    $env.PATH = "$nu.pwd;$filedir;$env.PATH"
}

let-env EXTRATERM_PREVIOUS_PROMPT_COMMAND = $env.PROMPT_COMMAND

def postexec [] {
    print "\033&${env.LC_EXTRATERM_COOKIE};3\007"
    print $it
    print "\000"
    if ($env.EXTRATERM_PREVIOUS_PROMPT_COMMAND != "") {
        if ($env.EXTRATERM_PREVIOUS_PROMPT_COMMAND != "postexec \$?") {
            $env.EXTRATERM_PREVIOUS_PROMPT_COMMAND
        }
    }
}

let-env PROMPT_COMMAND = "postexec \$?"

def preexec [] {
    print "\033&${env.LC_EXTRATERM_COOKIE};2;nushell\007"
    print $it
    print "\000"
}

def preexec_invoke_exec [] {
    if ($env.COMP_LINE != $null) {
        exit
    }
    if ($env.BASH_COMMAND == $env.PROMPT_COMMAND) {
        exit
    }
    let this_command = (history | last)
    preexec $this_command
}

trap preexec_invoke_exec DEBUG

if ($nu.os-info.name == 'Linux') {
    if ($nu.os-info.arch == 'aarch64') {
        alias from = "from.aarch64-linux-musl"
        alias show = "show.aarch64-linux-musl"
    } else {
        alias from = "from.x86_64-linux-musl"
        alias show = "show.x86_64-linux-musl"
    }
}

if ($nu.os-info.name == 'Darwin') {
    alias from = "from.x86_64-macos"
    alias show = "show.x86_64-macos"
}