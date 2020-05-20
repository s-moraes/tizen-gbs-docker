#Download base image opensuse 42.3
FROM opensuse/leap:42.3

# Add tizen tools repository
RUN zypper addrepo --gpgcheck-allow-unsigned-package http://download.tizen.org/tools/latest-release/openSUSE_42.3/ tizen

RUN zypper --no-gpg-checks refresh
#RUN zypper --non-interactive install gbs
RUN zypper install --no-confirm --no-recommends gbs
RUN zypper install --no-confirm --no-recommends hostname

RUN useradd -ms /bin/bash `id -un`

USER `id -un`
WORKDIR /home/`id -un`

#ADD $HOME /home/tizen
