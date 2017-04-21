require "help_me_p/version"

module HelpMeP
  def display(desired_print)
    p "*" * 20
    p desired_print
    p "*" * 20
  end
end
