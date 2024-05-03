# 1-create application with enginx deploy on kubbernates  
kubectl create deployment nginx --image=nginx 

# 2- scale pods to 6 replicas
kubectl scale deployment nginx --replicas=6

# 3- give every (nginxname) pod label color name for example 
kubectl labels pod nginxnname1 name=red

# 4- script with shell - select all ruuning pods by -selector , awk for give conditions , $5 for age coloumn , 100 for number , && for and  , ~ /d/ for days , {print$0} for print all log running pods more than 100 days
#!bin/bash
kubectl get pods --field-selector status.phase=Running | awk '($5>"100") && $5 ~ /d/ {print$0}'
