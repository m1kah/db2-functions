DB2 Commands
=

DB2 11.5 built-in functions https://www.ibm.com/support/knowledgecenter/SSEPGG_11.5.0/com.ibm.db2.luw.sql.ref.doc/doc/r0011043.html

Environment setup
==

Install minikube by following instructions from
https://kubernetes.io/docs/tasks/tools/install-minikube/

Create pod with db2

    kubectl apply -f db2.yaml
    kubectl exec -it db2 -- bash
    su db2inst1
    db2sampl
    db2start
    exit
    exit
    kubectl port-forward db2 50000:50000

Now it is possible to use any jdbc client to contact localhost
port 50000 with user db2inst1 and password changeit. I am
using Datagrip as my client.

