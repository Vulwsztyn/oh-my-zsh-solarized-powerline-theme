# color
BG_COLOR_BLACK=%{$bg[black]%}
BG_COLOR_BLUE=%{$bg[blue]%}
BG_COLOR_GREEN=%{$bg[green]%}
BG_COLOR_CYAN=%{$bg[cyan]%}

BG_COLOR_8=%K{8}

FG_COLOR_BLACK=%{$fg[black]%}
FG_COLOR_RED=%{$fg[red]%}
FG_COLOR_GREEN=%{$fg[green]%}
FG_COLOR_BLUE=%{$fg[blue]%}
FG_COLOR_YELLOW=%{$fg[yellow]%}
FG_COLOR_CYAN=%{$fg[cyan]%}
FG_COLOR_WHITE=%{$fg[white]%}

FG_COLOR_228=%F{228}
# reset color
RESET=%{$reset_color%}


GIT_DIRTY_COLOR=%F{196}
GIT_CLEAN_COLOR=%F{118}
GIT_PROMPT_INFO=%F{012}

ZSH_THEME_GIT_PROMPT_PREFIX=" \u2b60 "
ZSH_THEME_GIT_PROMPT_SUFFIX="$GIT_PROMPT_INFO"
ZSH_THEME_GIT_PROMPT_DIRTY=" $GIT_DIRTY_COLOR✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GIT_CLEAN_COLOR✔"

ZSH_THEME_GIT_PROMPT_ADDED="%F{082}✚%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{166}✹%f"
ZSH_THEME_GIT_PROMPT_DELETED="%F{160}✖%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{220]➜%f"
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{082]═%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{190]✭%f"

ZSH_TIME=%T

# username
PROMPT="$FG_COLOR_BLACK$BG_COLOR_GREEN %n"

# hostname
PROMPT=$PROMPT"$FG_COLOR_WHITE at$FG_COLOR_228 %m "

# green arrow
PROMPT=$PROMPT"$FG_COLOR_GREEN$BG_COLOR_BLUE"$'\u2b80'

# datetime
PROMPT=$PROMPT"$FG_COLOR_WHITE$BG_COLOR_BLUE $ZSH_TIME "

# blue arrow
PROMPT=$PROMPT"$FG_COLOR_BLUE$BG_COLOR_CYAN"$'\u2b80'

# current directory (%E hightline all line to end)
PROMPT=$PROMPT"$FG_COLOR_228$BG_COLOR_CYAN  %2~"$'$(git_prompt_info)'" %E
  "

# cyan arrow
PROMPT=$PROMPT"$FG_COLOR_CYAN$BG_COLOR_8"$'\u2b80'

# resrt
PROMPT=$PROMPT"$RESET "

local return_code="%(?..$FG_COLOR_RED%? ↵$RESET)"
RPROMPT="${return_code}"

