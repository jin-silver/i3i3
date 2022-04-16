
#if status is-interactive
#and not set -q TMUX
#    exec tmux
#end

#function fish_greeting
#    cat ~/.config/fish/groot
#end

function fish_user_key_bindings
    fish_vi_key_bindings
    bind -M insert -m default jj backward-char force-repaint
    bind -M default \ce history-search-backward
    bind -M insert \cr history-search-backward
    bind -M default \cf history-search-forward
    bind -M insert \cf history-search-forward
end
alias ls='/opt/coreutils/bin/ls --color --group-directories-first -X'
alias ghidra='/home/jin/ghidra_10.1-BETA_PUBLIC/ghidraRun'
alias pattern_create='/home/jin/gitforks/metasploit-framework/tools/exploit/pattern_create.rb'
alias pattern_offset='/home/jin/gitforks/metasploit-framework/tools/exploit/pattern_offset.rb'
alias msfvenom='/home/jin/gitforks/metasploit-framework/msfvenom'
alias v='nvim'
alias vim='nvim'


#export LS_COLORS=(vivid generate ~/gitforks/vivid/themes/nord.yml)
export LS_COLORS=(cat /home/jin/.config/fish/colors.txt)

