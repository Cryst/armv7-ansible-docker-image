FROM arm32v7/python:3.10

ENV PY_COLORS=1

RUN mkdir /etc/ansible/
RUN echo -e '[local]\nlocalhost' > /etc/ansible/hosts

# Latest version of cryptography 3.5.0 requires unavailable Rust compiler package
ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1
RUN pip3 install --no-cache-dir cryptography==3.4.8
RUN pip3 install --no-cache-dir ansible
