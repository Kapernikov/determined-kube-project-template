# Deployment of determined template and docker images for {{cookiecutter.project_name}}

Prerequisites:

* skaffold CLI
* helm 3 CLI

You need to be able to log in to a container registry. The kubernetes cluster needs to have a secret called `registry-creds` in the determined namespace that contains the image pull secrets for this container registry.
In addition to this, you need to have a `.kube/config` so that you have access to a kubernetes cluster.
Determined master needs to be deployed in the `determined` namespace (or you need to change the namespace in skaffold.yaml). The current version of the script doesn't authenticate against the determined master, so you'll have to modify it if you enabled authentication.

Then, do

```shell
skaffold run -d [REGISTRY HOSTNAME] -n determined
```

After a while this should finish. Then the templates should be installed. Note that the docker images are huge, so uploading/downloading will take a while.