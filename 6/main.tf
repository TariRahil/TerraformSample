resource "kubernetes_pod" "nginx"{
	for_each = var.nginx_pods
	metadata{
		name=each.key
	}
	spec{
		container{
			name=each.key
			image="nginx:1"
		}
	}
}
		
