And(/^a docker container named "([^"]*)" does not exist$/) do |name|
  system "docker ps | grep #{name} | awk '{print $1}' | xargs -I % sh -c 'echo %; docker kill %; docker wait %; docker rm %;'"
end
