Feature: Simple statistics

  In order to quickly and easily access simple statistics
  As a developer
  I want to enable a status page

  @default
  Scenario: Remote access default
    Given a new webserver
     When I request the status page from a remote host
     Then access will be denied

  @remote_stats
  Scenario: Remote access enabled
    Given a new webserver with the status page enabled for remote access
     When I request the status page from a remote host
     Then simple statistics will be shown
