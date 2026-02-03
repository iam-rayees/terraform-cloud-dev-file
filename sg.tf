module "dev_sg_1" {
  # source        = "../modules/sg"
  source        = "app.terraform.io/rayeez_devsecops/terraform-modules-sg/aws"
  version       = "1.0.0"
  vpc_name      = module.dev_vpc_1.vpc_name # will be retrieved from modules/network/output.tf
  vpc_id        = module.dev_vpc_1.vpc_id   # will be retrieved from modules/network/output.tf
  service_ports = ["80", "443", "8080", "8443", "22", "1443", "3306", "1900"]
  environment   = module.dev_vpc_1.environment # will be retrieved from modules/network/output.tf

}
