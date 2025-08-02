output "bastion_host_id" {
  value = azurerm_bastion_host.this.id
}

output "bastion_subnet_id" {
  value = azurerm_subnet.this.id
}

output "public_ip_id" {
  value = azurerm_public_ip.this.id
}
