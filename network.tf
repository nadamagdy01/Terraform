module "mynetwork" {
    source = "./Network"
    cidr_net_module = var.cidr
    sub_pub_cidr_list_net_module = var.sub_pub_cidr_list
    sub_priv_cidr_list_net_module = var.sub_priv_cidr_list
    azs_net_module = var.azs
}
