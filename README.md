# Docker image with gitlab-ci-multi-runner to run builds for LaTeX documents.

Docker image with gitlab-ci-multi-runner, which can run builds for LaTeX

## How to use

Example of [Docker Compose](https://docs.docker.com/compose/) file (`docker-compose.yml`)

```
CPFRunner:
  image: nabbelbabbel/docker-gitlab-ci-multi-runner-latex:latest
  volumes:
    - /opt/gitlab-ci-multi-runner:/home/gitlab_ci_multi_runner/data
  environment:
    - CI_SERVER_URL=<enter gitlab-ci url here>
    - RUNNER_TOKEN=<enter runner token here>
    - RUNNER_DESCRIPTION=<name the runner>
    - RUNNER_EXECUTOR=shell
  restart: always
```
## More information

* Read about [gitlab-ci-multi-runner](https://gitlab.com/gitlab-org/gitlab-ci-multi-runner/) to learn how integration works with GitLab CI.
* This image is based on [docker-gitlab-ci-multi-runner](https://github.com/sameersbn/docker-gitlab-ci-multi-runner), which handles registration and startup.
* This image is based on [docker-gitlab-ci-multi-runner-ruby](https://github.com/outcoldman/docker-gitlab-ci-multi-runner-ruby), which helped as reference implementation.
