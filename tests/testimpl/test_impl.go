package common

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/launchbynttdata/lcaf-component-terratest/types"
	"github.com/stretchr/testify/assert"
)

func TestNames(t *testing.T, ctx types.TestContext) {
	// Test names are regexp patterns, to allow us to match the random suffixes that are added to some names.
	// the keys are the names of the outputs from the terraform module, and the values are the expected name patterns.
	test_names := map[string]string{
		"resource_one_camel_case":                                   "TerratestResource_NAME_testUseast2Dev000R1000$",
		"resource_one_camel_case_with_separator":                    "Terratest-Resource_NAME_test-Useast2-Dev-000-R1-000$",
		"resource_one_camel_case_without_any_separators":            "TerratestResourceNAMEtestUseast2Dev000R1000$",
		"resource_one_dns_compliant_minimal":                        "terratest-resource-name-test-dev-000-r1$",
		"resource_one_dns_compliant_minimal_random_suffix":          "terratest-resource-name-test-\\d{10}$",
		"resource_one_dns_compliant_standard":                       "terratest-resource-name-test-useast2-dev-000-r1-000$",
		"resource_one_lowercase":                                    "terratest-resource_name_test-useast2-dev-000-r1-000$",
		"resource_one_lowercase_without_any_separators":             "terratestresourcenametestuseast2dev000r1000$",
		"resource_one_minimal":                                      "terratest-resource_name_test-dev-000-r1$",
		"resource_one_minimal_random_suffix":                        "terratest-resource_name_test-\\d{10}$",
		"resource_one_minimal_random_suffix_without_any_separators": "terratestresourcenametest\\d{10}$",
		"resource_one_recommended_per_length_restriction":           "terratest-resource_name_test-useast2-dev-000-r1-000$",
		"resource_one_standard":                                     "terratest-resource_name_test-useast2-dev-000-r1-000$",
		"resource_one_uppercase":                                    "TERRATEST-RESOURCE_NAME_TEST-USEAST2-DEV-000-R1-000$",
		"resource_one_uppercase_without_any_separators":             "TERRATESTRESOURCENAMETESTUSEAST2DEV000R1000$",
		"resource_two_recommended_per_length_restriction":           "TerratestResourceNAMEtestUseast2Dev000R2000$",
		"resource_two_standard":                                     "terratest-resource_name_test-useast2-dev-000-r2-000$",
	}

	t.Run("TestCheckNames", func(t *testing.T) {
		for name, expected := range test_names {
			t.Run(name, func(t *testing.T) {
				actual := terraform.Output(t, ctx.TerratestTerraformOptions(), name)
				assert.Regexp(t, expected, actual, "Expected %s to be %s, got %s", name, expected, actual)
			})
		}
	})
}
