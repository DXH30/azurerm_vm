# Terraform Azure VM Module

## Deskripsi

Modul ini digunakan untuk membuat VM di Azure. Modul ini menyediakan konfigurasi dasar untuk VM, termasuk jaringan, ukuran VM, dan sistem operasi.

## Prerequisites

- Terraform v1.5 lebih
- Akun Microsoft Azure, dengan akses yang dibutuhkan
- Azure CLI atau Azure Powershell untuk autentikasi

## Struktur Modul

```
azurerm_vm/
|--- main.tf
|--- variables.tf
|--- outputs.tf
|___ README.md
```

## Variable
Berikut adalah variable yang dapat dikonfigurasi dalam modul ini :

| Nama Variable         | Tipe   | Deskripsi           | Default           |
|-----------------------|--------|---------------------|-------------------|
| `vm_name`             | string | Nama VM             |-                  |
| `location`            | string | Lokasi VM           |"East US"          |
| `resource_group_name` | string | Nama Resource Group | -                 |
| `vm_size`             | string | Ukuran VM           | "Standard_DS1_v2" |
| `admin_username`      | string | Username Admin      | -                 |

## Contoh Penggunaan

Berikut adalah contoh penggunaan module ini

```hcl
module "azurerm_vm" {
    source              = "https://github.com/dxh30/azurerm_vm.git"
    vm_name             = "contoh-vm"
    location            = "West US"
    resource_group_name = "nama-sg"
    vm_size             = "Standard_B1s"
    admin_username      = "azureuser"
}
```
