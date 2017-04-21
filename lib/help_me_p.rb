require "help_me_p/version"
require "colorize"

module HelpMeP

  def self.colorize(string, color)
    "\e[#{color}m#{string}\e[0m"
  end

  def self.red
    31
  end

  def self.green
    32
  end

  def self.yellow
    33
  end

  def self.blue
    34
  end

  def self.pink
    35
  end

  def self.light_blue
    36
  end

  def pee(desired_print, method = __method__.to_s)
    puts HelpMeP.colorize("*" * 20, HelpMeP.blue)
    puts "CURRENTLY INSIDE METHOD" + __method__.to_s
    puts "PRINTING OBJECT OF TYPE: #{desired_print.class.to_s}"
    puts "*" * 20
    puts desired_print
    p desired_print
    puts "*" * 20
    puts "*" * 20
  end
end
