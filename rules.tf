variable "rules" {
    type = map(map(any))
    default = {
        ssh = {port = "22", protocol = "tcp", source_addresses = "0.0.0.0/0, ::/0"},
        http = {port = "80", protocol = "tcp", source_addresses = "0.0.0.0/0, ::/0"},
        https = {port = "443", protocol = "tcp", source_addresses = "0.0.0.0/0, ::/0"},
        icmp = {protocol = "icmp"}
        k8s-apiserver = {port = "6443", protocol = "tcp"},
        k8s-etcd-server-client = {port = "2379-2380", protocol = "tcp"},
        k8s-kubelets-api = {port = "10250", protocol = "tcp"},
        k8s-scheduler = {port = "10251", protocol = "tcp"},
        k8s-controll-manager = {port = "10252", protocol = "tcp"}
    }
}