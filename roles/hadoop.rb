name "hadoop"
description "hadoop"
run_list(
  "recipe[hadoop]",
)
default_attributes(
	"hadoop" => {
		"distribution" => "cdh"
	}
)

