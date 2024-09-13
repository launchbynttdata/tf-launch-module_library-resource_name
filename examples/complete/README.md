# complete

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_names"></a> [resource\_names](#module\_resource\_names) | terraform.registry.launch.nttdata.com/module_library/resource_name/launch | ~> 1.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_logical_product_family"></a> [logical\_product\_family](#input\_logical\_product\_family) | (Required) Name of the product family for which the resource is created.<br>    Example: org\_name, department\_name. | `string` | `"launch"` | no |
| <a name="input_logical_product_service"></a> [logical\_product\_service](#input\_logical\_product\_service) | (Required) Name of the product service for which the resource is created.<br>    For example, backend, frontend, middleware etc. | `string` | `"backend"` | no |
| <a name="input_create_cloudwatch_log_stream"></a> [create\_cloudwatch\_log\_stream](#input\_create\_cloudwatch\_log\_stream) | Flag to indicte if AWS cloudwatch log stream needs to be created. | `bool` | `false` | no |
| <a name="input_create_cloudwatch_log_subscription_filter"></a> [create\_cloudwatch\_log\_subscription\_filter](#input\_create\_cloudwatch\_log\_subscription\_filter) | Flag to indicte if  AWS cloudwatch log subscription filter needs to be created. | `bool` | `false` | no |
| <a name="input_instance_resource"></a> [instance\_resource](#input\_instance\_resource) | Number that represents the instance of the resource. | `number` | `0` | no |
| <a name="input_instance_env"></a> [instance\_env](#input\_instance\_env) | Number that represents the instance of the environment. | `number` | `0` | no |
| <a name="input_class_env"></a> [class\_env](#input\_class\_env) | (Required) Environment where resource is going to be deployed. For example. dev, qa, uat | `string` | `"dev"` | no |
| <a name="input_resource_names_map"></a> [resource\_names\_map](#input\_resource\_names\_map) | A map of key to resource\_name that will be used by tf-launch-module\_library-resource\_name to generate resource names | <pre>map(object(<br>    {<br>      name       = string<br>      max_length = optional(number, 60)<br>    }<br>  ))</pre> | `{}` | no |
| <a name="input_region"></a> [region](#input\_region) | (Required) The location where the resource will be created. Must not have spaces<br>    For example, us-east-1, us-west-2, eu-west-1, etc. | `string` | `"us-east-2"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment in which the resource should be provisioned like dev, qa, prod etc. | `string` | `"dev"` | no |
| <a name="input_environment_number"></a> [environment\_number](#input\_environment\_number) | The environment count for the respective environment. Defaults to 000. Increments in value of 1 | `string` | `"000"` | no |
| <a name="input_resource_number"></a> [resource\_number](#input\_resource\_number) | The resource count for the respective resource. Defaults to 000. Increments in value of 1 | `string` | `"000"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_one_standard"></a> [resource\_one\_standard](#output\_resource\_one\_standard) | Resource one in standard format. |
| <a name="output_resource_two_standard"></a> [resource\_two\_standard](#output\_resource\_two\_standard) | Resource two in standard format. |
| <a name="output_resource_one_lowercase"></a> [resource\_one\_lowercase](#output\_resource\_one\_lowercase) | Resource one in lowercase format. |
| <a name="output_resource_one_uppercase"></a> [resource\_one\_uppercase](#output\_resource\_one\_uppercase) | Resource one in uppercase format. |
| <a name="output_resource_one_lowercase_without_any_separators"></a> [resource\_one\_lowercase\_without\_any\_separators](#output\_resource\_one\_lowercase\_without\_any\_separators) | Resource one in lowercase format without separator. |
| <a name="output_resource_one_uppercase_without_any_separators"></a> [resource\_one\_uppercase\_without\_any\_separators](#output\_resource\_one\_uppercase\_without\_any\_separators) | Resource one in uppercase format without separator. |
| <a name="output_resource_one_minimal"></a> [resource\_one\_minimal](#output\_resource\_one\_minimal) | Resource one in minimal format. |
| <a name="output_resource_one_minimal_random_suffix"></a> [resource\_one\_minimal\_random\_suffix](#output\_resource\_one\_minimal\_random\_suffix) | Resource one in minimal format with random number. |
| <a name="output_resource_one_minimal_random_suffix_without_any_separators"></a> [resource\_one\_minimal\_random\_suffix\_without\_any\_separators](#output\_resource\_one\_minimal\_random\_suffix\_without\_any\_separators) | Resource one in minimal format with random number without separator. |
| <a name="output_resource_one_dns_compliant_standard"></a> [resource\_one\_dns\_compliant\_standard](#output\_resource\_one\_dns\_compliant\_standard) | Resource one in DNS compliant format. |
| <a name="output_resource_one_dns_compliant_minimal"></a> [resource\_one\_dns\_compliant\_minimal](#output\_resource\_one\_dns\_compliant\_minimal) | Resource one in DNS compliant minimal format. |
| <a name="output_resource_one_dns_compliant_minimal_random_suffix"></a> [resource\_one\_dns\_compliant\_minimal\_random\_suffix](#output\_resource\_one\_dns\_compliant\_minimal\_random\_suffix) | Resource one in DNS compliant minimal format with random number. |
| <a name="output_resource_one_camel_case"></a> [resource\_one\_camel\_case](#output\_resource\_one\_camel\_case) | Resource one in camel case format. |
| <a name="output_resource_one_camel_case_without_any_separators"></a> [resource\_one\_camel\_case\_without\_any\_separators](#output\_resource\_one\_camel\_case\_without\_any\_separators) | Resource one in camel case format without separator. |
| <a name="output_resource_one_camel_case_with_separator"></a> [resource\_one\_camel\_case\_with\_separator](#output\_resource\_one\_camel\_case\_with\_separator) | Resource one in camel case format with separator. |
| <a name="output_resource_one_recommended_per_length_restriction"></a> [resource\_one\_recommended\_per\_length\_restriction](#output\_resource\_one\_recommended\_per\_length\_restriction) | Resource one in recommended format as per length restriction. |
| <a name="output_resource_two_recommended_per_length_restriction"></a> [resource\_two\_recommended\_per\_length\_restriction](#output\_resource\_two\_recommended\_per\_length\_restriction) | Resource two in recommended format as per length restriction. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
