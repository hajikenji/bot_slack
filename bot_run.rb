require "slack-notify"
require 'dotenv'
require 'clockwork'
include Clockwork
Dotenv.load



client = SlackNotify::Client.new(
  webhook_url: ENV["SLACK_URL"],
  channel: "#test",
  username: "bot",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":shipit:",
  link_names: 1
)
client.notify("Hello There!")

every(3.minutes, 'test') do
  client.notify("Hello There!")
end