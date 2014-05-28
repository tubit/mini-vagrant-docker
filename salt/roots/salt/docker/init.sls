include:
  - docker.apt

docker:
  pkg:
    - latest
    - name:
      - lxc-docker
    - require:
      - cmd: apt-update

