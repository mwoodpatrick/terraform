Terraform K3d

Sunday, October 29, 2023

5:48 AM

 

# Last updated 10/29/2023 

 

[Docs overview | SneakyBugs/k3d | Terraform | Terraform Registry](https://registry.terraform.io/providers/SneakyBugs/k3d/latest/docs)

 

 

mkdir k3d\_postgres

cd k3d\_postgres

nvim main.tf

terraform init

terraform plan

terraform apply

k3d cluster list

 

> NAME SERVERS AGENTS LOADBALANCER
>
> example 1/1 0/0 true
>
> kubefirst 1/1 3/3 true
>
>  

 

kubectl cluster-info

 

> Kubernetes control plane is running at <https://0.0.0.0:36455>
>
> CoreDNS is running at <https://0.0.0.0:36455/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy>
>
> Metrics-server is running at <https://0.0.0.0:36455/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy>
>
>  
>
> To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
>
>  

 

>  

kubectl get pods -A

 

> NAMESPACE NAME READY STATUS RESTARTS AGE
>
> kube-system local-path-provisioner-957fdf8bc-t49tw 1/1 Running 0 2m13s
>
> kube-system coredns-77ccd57875-zkg24 1/1 Running 0 2m13s
>
> kube-system helm-install-traefik-crd-m2vz4 0/1 Completed 0 2m13s
>
> kube-system helm-install-traefik-9khgc 0/1 Completed 1 2m13s
>
> kube-system svclb-traefik-e2796b65-6jzvt 2/2 Running 0 114s
>
> kube-system metrics-server-648b5df564-lc9fw 1/1 Running 0 2m13s
>
> default postgres-postgresql-0 1/1 Running 0 2m6s
>
> kube-system traefik-64f55bb67d-lmff2 1/1 Running 0 114s
>
>  

kubectl exec -it postgres-postgresql-0 -- sh

 

$ ps -Alf

> F S UID PID PPID C PRI NI ADDR SZ WCHAN STIME TTY TIME CMD
>
> 4 S 1001 1 0 0 80 0 - 52540 - 13:18 ? 00:00:00 /opt/bitnami/postgresql/bin/postgres -D /bitnami/p
>
> 1 S 1001 126 1 0 80 0 - 52540 - 13:18 ? 00:00:00 postgres: checkpointer
>
> 1 S 1001 127 1 0 80 0 - 52540 - 13:18 ? 00:00:00 postgres: background writer
>
> 1 S 1001 129 1 0 80 0 - 52540 - 13:18 ? 00:00:00 postgres: walwriter
>
> 1 S 1001 130 1 0 80 0 - 52933 - 13:18 ? 00:00:00 postgres: autovacuum launcher
>
> 1 S 1001 131 1 0 80 0 - 52903 - 13:18 ? 00:00:00 postgres: logical replication launcher
>
> 4 S 1001 486 0 0 80 0 - 620 do\_wai 13:22 pts/0 00:00:00 sh
>
> 4 R 1001 506 486 0 80 0 - 2440 - 13:22 pts/0 00:00:00 ps -Alf

 

terraform destroy

 

 

 

[Convert notes from OneNote into Markdown (github.com)](https://gist.github.com/heardk/ded40b72056cee33abb18f3724e0a580)
