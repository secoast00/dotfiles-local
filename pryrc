if defined?(PryByebug) || defined?(PryNav)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'exit'
end

Pry.config.color = true
# 'break --disable-all'   Pry.config.color = true  
# === CUSTOM PROMPT === #
# This prompt shows the ruby version (useful for RVM) 
# Pry.config.prompt = [proc { |obj, nest_level, _| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level, _| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]  
#* Pry.config.ls.separator = "\n" # new lines between methods  */
# Pry.config.ls.heading_color = :magenta 
# Pry.config.ls.public_method_color = :green 
# Pry.config.ls.protected_method_color = :yellow 
# Pry.config.ls.private_method_color = :bright_black

begin
  require 'awesome_print'
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts err
  puts "no awesome_print"
end

begin
  require 'yaml'
rescue LoadError => err
  puts err
  puts "no yaml"
end
