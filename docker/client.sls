{% from "docker/map.jinja" import client with context %}
{%- if client.enabled %}

include:
  - docker.client.container
  {%- if client.compose is defined %}
  - docker.client.compose
  {%- endif %}
  {%- if client.service is defined %}
  - docker.client.service
  {%- endif %}

docker_python:
  pkg.installed:
    - names: {{ client.pkgs }}

{%- endif %}
