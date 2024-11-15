#!/usr/bin/env ruby

programs = [
    { "name" => "atuin", "bin" => "atuin" },
    { "name" => "bat", "bin" => "bat" },
    { "name" => "ddgr", "bin" => "ddgr" },
    { "name" => "doggo", "bin" => "doggo" },
    { "name" => "eza", "bin" => "eza" },
    { "name" => "fastfetch", "bin" => "fastfetch" },
    { "name" => "fnm", "bin" => "fnm" },
    { "name" => "fx", "bin" => "fx" },
    { "name" => "fzf", "bin" => "fzf" },
    { "name" => "gnupg", "bin" => "gpg" },
    { "name" => "go", "bin" => "go" },
    { "name" => "gsed", "bin" => "gsed" },
    { "name" => "jq", "bin" => "jq" },
    { "name" => "less", "bin" => "less" },
    { "name" => "neovim", "bin" => "nvim" },
    { "name" => "nmap", "bin" => "nmap" },
    { "name" => "nodejs", "bin" => "node" },
    { "name" => "pnpm", "bin" => "pnpm" },
    { "name" => "pyenv", "bin" => "pyenv" },
    { "name" => "rbenv", "bin" => "rbenv" },
    { "name" => "ripgrep", "bin" => "rg" },
    { "name" => "ripgrep-all", "bin" => "rga" },
    { "name" => "starship", "bin" => "starship" },
    { "name" => "stow", "bin" => "stow" },
    { "name" => "tealdeer", "bin" => "tldr" },
    { "name" => "thefuck", "bin" => "thefuck" },
    { "name" => "tmux", "bin" => "tmux" },
    { "name" => "yq", "bin" => "yq" },
    { "name" => "zellij", "bin" => "zellij" },
    { "name" => "zig", "bin" => "zig" },
    { "name" => "zoxide", "bin" => "zoxide" },
]

programs.each do |program|
    if not system("command -v #{program["bin"]} > /dev/null 2>&1")
        puts("Installing #{program["name"]}...")
        system("brew install #{program["name"]}")
    end
end
