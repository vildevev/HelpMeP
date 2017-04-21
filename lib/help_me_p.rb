require "help_me_p/version"

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
    puts HelpMeP.colorize("*" * 50, HelpMeP.blue)
    puts "*" * 50
    puts HelpMeP.colorize(" " * 23 + "START" + " " * 22, HelpMeP.blue)
    puts "*" * 50
    puts HelpMeP.colorize("*" * 50, HelpMeP.blue)
    if !desired_print
      puts HelpMeP.colorize("😡 😡 😡 RETURNED NIL VALUE 😡 😡 😡", HelpMeP.red)
    else
      puts HelpMeP.colorize("PRINTING OBJECT OF TYPE: #{desired_print.class.to_s}", HelpMeP.green)
      puts "_" * 50
      ap desired_print
      puts "_" * 50
    end
    puts HelpMeP.colorize("*" * 50, HelpMeP.blue)
    puts "*" * 50
    puts HelpMeP.colorize(" " * 23 + "END" + " " * 24, HelpMeP.blue)
    puts "*" * 50
    puts HelpMeP.colorize("*" * 50, HelpMeP.blue)
  end
end
