from tf2 import Tf2,Terraform,TerraformPlanLoader
tf2 = Tf2(Terraform(TerraformPlanLoader())
@tf2.test("resources.kubernetes_pod.nginx")
def test_nginx_pods_with_no_latest_image(self):
	for pod_name in self.instances:
		assert self.instances[pod_name].values.spec[0].container[0].image.endwith(":latest") is false
tf2.run()
