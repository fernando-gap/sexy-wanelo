#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY=" ✗"
SCM_THEME_PROMPT_CLEAN=" \[${MAGENTA}\]✓"
SCM_THEME_PROMPT_PREFIX=" \[${MAGENTA}\]["
SCM_THEME_PROMPT_SUFFIX="\[${MAGENTA}\]]"

GIT_THEME_PROMPT_DIRTY=" ✗"
GIT_THEME_PROMPT_CLEAN=" \[${MAGENTA}\]✓"
GIT_THEME_PROMPT_PREFIX=" \[${MAGENTA}\]["
GIT_THEME_PROMPT_SUFFIX="\[${MAGENTA}\]]"

RVM_THEME_PROMPT_PREFIX="["
RVM_THEME_PROMPT_SUFFIX="]"

RED=$(tput setaf 162)
WHITE=$(tput setaf 15)
GREEN=$(tput setaf 190)
MAGENTA=$(tput setaf 63)
BLUE=$(tput setaf 33)

BOLD=$(tput bold)
RESET=$(tput sgr0)

function prompt_command() {
    if [ $? -eq 0 ]; then
      status=🌈️
    else
      status=🌩️
    fi

    PS1="\n${BOLD}\[${RED}\] \h \[${WHITE}\]in \[${GREEN}\]\w $status \n${BOLD} \[${BLUE}\][$(clock_prompt)]\[${GREEN}\]\[${MAGENTA}\]$(scm_prompt_info) \[${GREEN}\]→\[${RESET}\] "
}

THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"\[${BLUE}\]"}

PROMPT_COMMAND=prompt_command;
