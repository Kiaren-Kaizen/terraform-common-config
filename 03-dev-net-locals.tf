########################################################
# Local file for a collection of network config in dev #
########################################################
locals {
  dev_net = {
    resource_with_pub_and_pri_ips = {
      public = "20.0.0.0"
      private = "172.0.0.0"
    }
  }
}