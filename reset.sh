#This script will reset the bookingo demo to default settings with all traffic going to v1 (no stars) Questions: benjking@
#Delete all destionation rules
./istioctl delete destinationrule details
./istioctl delete destinationrule ratings
./istioctl delete destinationrule reviews
./istioctl delete destinationrule productpage

#Delete all virtual service config
./istioctl delete virtualservice reviews
./istioctl delete virtualservice ratings
./istioctl delete virtualservice details
./istioctl delete virtualservice productpage

#apply default destination rules and virtual services
kubectl apply -f destination-rule-all.yaml
kubectl apply -f virtual-service-all-v1.yaml
