#Below is a example block of the module that is specific to  
output "region" {
  description = "GENERAL"
  value = {
    dev = local.dev_general.region
    pre = local.pre_general.region
    prd = local.prd_general.region
  }
}

# A Simple output of the tenant id depending on what environment is passed through
output "tenant_id" {
  description = "IDS"
  value = {
    dev = local.dev_ids.region
    pre = local.pre_ids.region
    prd = local.prd_ids.region
  }
}

# You can also add output blocks that have more complex calls. In this case, we are able to grab either the public or private ip.
output "resource_with_pub_and_pri_ips" {
  description = "NETWORK"
  value = {
    dev = {
      public  = local.dev_net.resource_with_pub_and_pri_ips.public
      private = local.dev_net.resource_with_pub_and_pri_ips.private
    }
    pre = {
      public  = local.pre_net.resource_with_pub_and_pri_ips.public
      private = local.pre_net.resource_with_pub_and_pri_ips.private
    }
    prd = {
      public     = local.prd_net.resource_with_pub_and_pri_ips.public
      private = local.prd_net.resource_with_pub_and_pri_ips.private
    }
  }
}
