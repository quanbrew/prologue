set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_TMUX 1

alias l="ls -lah"
alias vi="nvim"
alias vim="nvim"

if test -f ~/.zprofile
    fenv source ~/.zprofile
else if test -f ~/.profile
    fenv source ~/.profile
end

function proxy
    set -Ux https_proxy http://127.0.0.1:6152
    set -Ux http_proxy http://127.0.0.1:6152
    set -Ux all_proxy socks5://127.0.0.1:6153
    set -Ux HTTPS_PROXY http://127.0.0.1:6152
    set -Ux HTTP_PROXY http://127.0.0.1:6152
    set -Ux ALL_PROXY socks5://127.0.0.1:6153
end


function noproxy
    set -e https_proxy
    set -e http_proxy
    set -e all_proxy
    set -e HTTPS_PROXY
    set -e HTTP_PROXY
    set -e ALL_PROXY
end
