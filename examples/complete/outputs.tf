// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

output "resource_one_standard" {
  value       = module.resource_names["resource_one"].standard
  description = "Resource one in standard format."
}

output "resource_two_standard" {
  value       = module.resource_names["resource_two"].standard
  description = "Resource two in standard format."
}

output "resource_one_lowercase" {
  value       = module.resource_names["resource_one"].lower_case_with_separator
  description = "Resource one in lowercase format."
}

output "resource_one_uppercase" {
  value       = module.resource_names["resource_one"].upper_case_with_separator
  description = "Resource one in uppercase format."
}

output "resource_one_lowercase_without_any_separators" {
  value       = module.resource_names["resource_one"].lower_case_without_any_separators
  description = "Resource one in lowercase format without separator."
}

output "resource_one_uppercase_without_any_separators" {
  value       = module.resource_names["resource_one"].upper_case_without_any_separators
  description = "Resource one in uppercase format without separator."
}

output "resource_one_minimal" {
  value       = module.resource_names["resource_one"].minimal
  description = "Resource one in minimal format."
}

output "resource_one_minimal_random_suffix" {
  value       = module.resource_names["resource_one"].minimal_random_suffix
  description = "Resource one in minimal format with random number."
}

output "resource_one_minimal_random_suffix_without_any_separators" {
  value       = module.resource_names["resource_one"].minimal_random_suffix_without_any_separators
  description = "Resource one in minimal format with random number without separator."
}

output "resource_one_dns_compliant_standard" {
  value       = module.resource_names["resource_one"].dns_compliant_standard
  description = "Resource one in DNS compliant format."
}

output "resource_one_dns_compliant_minimal" {
  value       = module.resource_names["resource_one"].dns_compliant_minimal
  description = "Resource one in DNS compliant minimal format."
}

output "resource_one_dns_compliant_minimal_random_suffix" {
  value       = module.resource_names["resource_one"].dns_compliant_minimal_random_suffix
  description = "Resource one in DNS compliant minimal format with random number."
}

output "resource_one_camel_case" {
  value       = module.resource_names["resource_one"].camel_case
  description = "Resource one in camel case format."
}

output "resource_one_camel_case_without_any_separators" {
  value       = module.resource_names["resource_one"].camel_case_without_any_separators
  description = "Resource one in camel case format without separator."
}

output "resource_one_camel_case_with_separator" {
  value       = module.resource_names["resource_one"].camel_case_with_separator
  description = "Resource one in camel case format with separator."
}

output "resource_one_recommended_per_length_restriction" {
  value       = module.resource_names["resource_one"].recommended_per_length_restriction
  description = "Resource one in recommended format as per length restriction."
}

output "resource_two_recommended_per_length_restriction" {
  value       = module.resource_names["resource_two"].recommended_per_length_restriction
  description = "Resource two in recommended format as per length restriction."
}
