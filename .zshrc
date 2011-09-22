. ~/.aliases

. ~/.environment

. ~/.bindkey

setopt histignorealldups

# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _complete _match _correct _approximate _prefix
zstyle ':completion:*' completions 1
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' ignore-parents parent
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z} l:|=* r:|=*' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' match-original both
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=4
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/home/ajb/.zshrc'

if [ -r ~/.message ]
then
   cat ~/.message
fi

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ "$TERM" != linux ]
then
   PROMPT="%{]2;\${PROMPT_PREFIX}\${TTY} \${DPSLVL+[\${TARGET_SYSTEM-native}] }$PROMPT%}$PROMPT"
fi
# added by dev-profile-setup; preserve nested prompt
[ -n "${PROMPT%%*\%\(\~..SLX\)*}" ] && PROMPT="$SLX_ZSH_PROMPT$PROMPT"
setopt promptsubst
