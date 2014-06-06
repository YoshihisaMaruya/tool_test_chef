name "java"
description "java"
run_list(
  "recipe[scala]",
  "recipe[chef-sbt]"
)
default_attributes(
  "sbt" => {
    "version" => "0.13.1"
  }
)

