@announce
Feature: Ghost Docker

  Background:
    Given The default aruba timeout is 30 seconds
    And a docker container named "cucumber-ghost" does not exist

  Scenario: Persistence
    When I successfully run `docker build -rm -t knoopx/ghost ghost` for up to 120 seconds
    And I successfully run `docker run -d -name cucumber-ghost -p :2368 -v ./fuck:/app/content -e GHOST_URL="http://localhost" knoopx/ghost`
    And I run `sleep 10`
    And I run `find ./tmp`
    Then the following directories should exist:
      | tmp/aruba/data    |
      | tmp/aruba/images  |
      | tmp/aruba/plugins |
      | tmp/aruba/themes  |
