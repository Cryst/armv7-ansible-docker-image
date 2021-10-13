# dockerfile for ARM based NAS
NAS: QNAP TS-431X3
CPU: Alpine AL314 Quad-core ARM Cortex-A15 CPU @ 1.70GHz

# run
docker build -t arm32v7/ansible < ansible.Dockerfile
