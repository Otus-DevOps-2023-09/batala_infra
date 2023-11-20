provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}
#db_ip_address            = module.db.internal_ip_address_db[0]
module "app" {
  source                   = "../modules/app"
  public_key_path          = var.public_key_path
  private_key_path         = var.private_key_path
  app_disk_image           = var.app_disk_image
  subnet_id                = var.subnet_id
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
  env                      = var.env
#
  bucket_name              = var.bucket_name
  secret_key               = var.secret_key
  service_account_id       = var.service_account_id
  image_id                 = var.image_id
  bucket_name              = var.backet_name
  service_account_id       = var.service_account_id
  service_account_key_file = var.service_account_key_file
  access_key               = var.access_key
  secret_key               = var.secret_key
  db_id                    = var.db_id
  private_key_path         = var.private_key_path 
}

module "db" {
  source                   = "../modules/db"
  public_key_path          = var.public_key_path
  private_key_path         = var.private_key_path
  db_disk_image            = var.db_disk_image
  subnet_id                = var.subnet_id
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
  env                      = var.env
  #
  bucket_name              = var.bucket_name
  secret_key               = var.secret_key
  service_account_id       = var.service_account_id
  image_id                 = var.image_id
  bucket_name              = var.backet_name
  service_account_id       = var.service_account_id
  service_account_key_file = var.service_account_key_file
  access_key               = var.access_key
  secret_key               = var.secret_key
  db_id                    = var.db_id
  private_key_path         = var.private_key_path
}