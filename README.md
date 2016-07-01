# Ansible Role: graylog-collector

Install and configure Graylog's colletor on Centos server.

## Requirements
None.

## Role Variables
Available variables are listed below, along with default values (see `defaults/main.yml`):

Which version of graylog-collector to install:
   
    graylog_collector_version: 0.4.1

Graylog server and port to send logs to:
   
    graylog_server: 127.0.0.1
    graylog_server_port: 12900

Graylog-collector registration:
   
    graylog_enable_registration: true
    graylog_collector_id: "file:/etc/graylog/collector/collector-id"

Logfiles for graylog-collector:
   
    graylog_inputs:
      - inputs_name: "default"
        inputs_type: "file"
        path_glob_root: "/var/log"
        path_glob_pattern: "*.log"
        content_splitter: "PATTERN"
        content_splitter_pattern: '^\\w{1},\\s\\[\\d{4}-\\d{2}-\\d{2}T'

Send messages to a Graylog server:
   
    graylog_outputs:
      - outputs_name: "default"
        outputs_type: gelf
        outputs_host: 127.0.0.1
        outputs_port: 12201

## Example Playbook

    - hosts: all
      roles:
        - graylog-collector

