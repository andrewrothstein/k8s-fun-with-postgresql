.PHONY: up
up:
	kind create cluster --config kind.yml

.PHONY: apply
apply:
	kubectl apply -k kind

.PHONY: unapply
unapply:
	kubectl delete -k kind

.PHONY: down
down:
	kind delete cluster --name bootstrap
