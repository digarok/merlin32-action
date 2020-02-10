FROM ubuntu:18.04


# Update
RUN apt-get update


# Install packages
#RUN apt-get -yq install rsync openssh-client


# Label
LABEL "com.github.actions.name"="Merlin32"
LABEL "com.github.actions.description"="For assembling 6502/65c02/65c816 code."
LABEL "com.github.actions.icon"="target"
LABEL "com.github.actions.color"="blue"

LABEL "version"="0.1.0"
LABEL "repository"="http://github.com/digarok/merlin32-action"
LABEL "homepage"="https://github.com/digarok/merlin32-action"
LABEL "maintainer"="Dagen Brock <dagenbrock@gmail.com>"


# Copy entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
