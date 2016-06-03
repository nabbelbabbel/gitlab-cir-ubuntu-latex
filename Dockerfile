FROM sameersbn/gitlab-ci-multi-runner:latest
MAINTAINER Jan Unsleber <j.unsleber@wwu.de>

# include additional repos
RUN apt-get update -q
RUN apt-get install -qy texlive-full 
RUN apt-get install -qy python-pygments 
RUN apt-get install -qy gnuplot

RUN chown -R ${GITLAB_CI_MULTI_RUNNER_USER}:${GITLAB_CI_MULTI_RUNNER_USER} ${GITLAB_CI_MULTI_RUNNER_HOME_DIR}

RUN locale-gen en_US.UTF-8

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

ENV RUNNER_DESCRIPTION=c++
ENV RUNNER_DESCRIPTION=fortran
ENV RUNNER_DESCRIPTION=python
ENV RUNNER_DESCRIPTION=shell
ENV RUNNER_TAG_LIST=c++
ENV RUNNER_LIMIT=1

ENV RUNNER_TOKEN=
ENV CI_SERVER_URL=
