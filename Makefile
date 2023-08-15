
Kubernetes:
	kubectl cluster-info
	kubectl create ns monitoring
	kubectl create ns spin-merge-ns
	helm install prom prometheus-community/kube-prometheus-stack -n monitoring
	cd micro-services && \
		kubectl create -k backend && \
		kubectl create -k frontend && \
		kubectl create -f monitoring
	helm upgrade --install loki-stack grafana/loki-stack --set fluent-bit.enabled=true,promtail.enabled=false -n monitoring
	echo "\nLoki URL for grafana datasource addition: http://loki-stack-headless:3100\nPrometheus URL for grafana datasource addition: http://prom-kube-prometheus-stack-prometheus:9090\nJaeger URL for grafana datasource addition: http://trace.spin-merge-ns:16686"
