## Notes
* syntax highlighting: https://github.com/tpope/vim-pathogen and https://github.com/hashivim/vim-terraform
* regarding variables, it looks like I have to include defaults, or not include anything, when using the tfvars files. Not sure how I feel about this yet. There may be a way to get what I want, a flat config file with implicit defaults (my config uses `key1 = val1`) but maybe I don't understand best practices for terraform yet
* while config values can be passed at run-time via CLI flags, I'm going to stick with the config file itself--I can version it and store it next the code.
* as before, new ssh keys require a new instance to be created
