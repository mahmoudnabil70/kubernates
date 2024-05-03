#!bin/bash
kubectl get pods --field-selector status.phase=Running | awk '($5>"100") && $5 ~ /d/ {print$0}'