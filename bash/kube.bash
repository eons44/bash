kube_delete_weave () {
	for p in $(kubectl get pods -A --no-headers -o custom-columns=":metadata.name" | grep weave-net); do kubectl delete pod -n kube-system $p; done
}
alias kdweave=kube_delete_weave
