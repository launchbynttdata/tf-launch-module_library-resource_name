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

output "network_interface_name" {
  value       = module.nic.name
  description = "The name of the Network Interface."
}

output "resource_group_name" {
  value       = module.resource_group.name
  description = "The name of the Resource Group in which the Network Interface exists."
}

output "virtual_network_name" {
  value       = module.virtual_network.vnet_name
  description = "The name of the Virtual Network in which the Network Interface exists."
}

output "public_ip_name" {
  value       = module.public_ip.name
  description = "The name of the Public IP Address associated with the Network Interface."
}
