# Template for adding a project-specific docker image and corresponding templates to your determined instance

This template will add a "kube" folder to your project containing a small helm chart that adds project-specific templates for your project.
Deployment is done by skaffold. Skaffold is also responsible for building a project-specific environments (and environments-gpu) image, and the image containing the submitter script.

How to use:

```shell
cd <PROJECT_FOLDER>
cookiecutter https://github.com/Kapernikov/determined-kube-project-template
```

Once the cookiecutter finishes, further documentation will be in the kube folder ([here](kube/README.md)).
```shell
cd kube
cat README.md | less # and now read the documentation from here
```

