require "kirakira/version"
require "string-irc"

class Kirakira
  include Cinch::Plugin

  ANSI_COLORS = [:white, :blue, :green, :red, :brown, :purple, :orange, :yellow, :light_green, :teal, :light_cyan, :light_blue, :pink]

  match(/^k[ 　](.+?)[ 　](.+)/, method: :send_kirakira_msg, use_prefix: false)

  def send_kirakira_msg(m, channel, msg)
    Channel("#" + channel).join
    Channel("#" + channel).send("#{m.user.nick}: #{to_kirakira(msg)}")
  end

  def to_kirakira(str)
    colored = str.chars.map {|ch| StringIrc.new(ch).send(ANSI_COLORS.sample)}
    return colored.join("")
  end

end
