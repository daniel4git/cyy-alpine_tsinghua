#自动加载提示符
autoload -U compinit
compinit
setopt completealiases
#消除历史记录中的重复条目
setopt HIST_IGNORE_DUPS
