Feature: Authorize access to content by host

In order to restrict part of my website
As a developer
I want to restrict access to known remote hosts

  @authz_host_listed
  Scenario: Known remote address
    Given a new webserver configured to authorize access based on the remote address
     When the remote address is listed as authorized
     Then access will be granted

  @authz_host_unlisted
  Scenario: Unlisted remote address
    Given a new webserver configured to authorize access based on the remote address
     When the remote address is not listed as authorized
     Then access will be denied
