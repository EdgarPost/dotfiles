FROM ubuntu:latest

RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository --yes --update ppa:ansible/ansible
RUN apt install -y ansible

RUN mkdir -p /root/.config/nvim

COPY ./tmux/tmux.conf /root/.tmux.conf
COPY ./nvim/init.lua /root/.config/nvim/init.lua

COPY playbook.yaml playbook.yaml

RUN ansible-playbook playbook.yaml

CMD ["zsh"]
