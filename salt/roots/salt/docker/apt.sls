docker-apt:
  cmd:
    - run
    - name: apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A
    - unless: apt-key list | grep -q 36A1D7869245C8950F966E92D8576A

/etc/apt/sources.list.d/docker.list:
  file:
    - managed
    - source: salt://docker/docker.list
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - require:
      - cmd: docker-apt

