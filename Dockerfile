FROM codercom/code-server:4.17.1
# COPY .vscode /home/coder/.local/share/code-server
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
  && chmod +x kubectl && sudo mv kubectl /usr/local/bin/ \
  && curl -L -o devspace "https://github.com/loft-sh/devspace/releases/latest/download/devspace-linux-amd64" \
  && chmod +x devspace && sudo  mv devspace /usr/local/bin