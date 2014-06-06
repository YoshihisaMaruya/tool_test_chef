name "java"
description "java"
run_list(
  "recipe[java]",
  "recipe[maven]"
)

