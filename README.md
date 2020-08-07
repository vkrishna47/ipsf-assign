Steps followed IPFS Assignment:

1) Install jenkins server on cloud EC2 server and Install Docker Engine and kubernetes(minikube) on secondary EC2 server
2) Setup secondary server(Docker) as jenkins Slave machine.
3) Created  Build pipepile(CI) in jenkins for IPFS Docker image with build go application in docker image.
4) Created Deploy Pipeline (CD) to deploy created docker image into kubernetes server
5) Verified Deployed go application output by kubernetes pod.

Output:

ubuntu@ip-XX-XX-XX-XX:/usr/bin$ kubectl exec -it ipfs-deployment-65fc8c8666-w2pcf /bin/bash
root@ipfs-deployment-65fc8c8666-w2pcf:/app# ./main
added :  QmTp2hEo8eXRp6wg7jXv1BLCMh5a4F3B7buAUZNZUu772j
data from cid :  hello world!
