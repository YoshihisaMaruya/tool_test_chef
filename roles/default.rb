name "default"
description "default"
run_list(
  "recipe[apt]",
  "recipe[vim]",
  "recipe[git]",
  "recipe[python]"
)

