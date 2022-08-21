module "test_earth" {
  source     = "./earth"
  test_input = "Hello earth"
}
output "test_earth_output" {
  value = module.test_earth.test_output
}
