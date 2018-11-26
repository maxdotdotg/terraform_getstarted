## Notes
* syntax highlighting: https://github.com/tpope/vim-pathogen and https://github.com/hashivim/vim-terraform
* regarding variables, it looks like I have to include defaults, or not include anything, when using the tfvars files. Not sure how I feel about this yet. There may be a way to get what I want, a flat config file with implicit defaults (my config uses `key1 = val1`) but maybe I don't understand best practices for terraform yet
* while config values can be passed at run-time via CLI flags, I'm going to stick with the config file itself--I can version it and store it next the code.
* as before, new ssh keys require a new instance to be created
* [Armon Dadgar, CTO of Hashicorp, overview of immutable infra](https://www.youtube.com/watch?v=II4PFe9BbmE)
* lifecycle parameter - how to manage resource replacement (ex: `create_before_destroy`)
    when set on a resource, all of its dependant resources must be set the same
    ex: instance uses security group resource and is set to `create_before_destroy = true` --> security group resource must also be set the same

