require 'rake'

argv = ARGV.select do |argument|
  case argument
  when /^-/ then
    argument
  when /\*/ then
    FileList[argument].to_a.each do |file|
      load File.expand_path file
    end

    false
  else
    load File.expand_path argument

    false
  end
end

ARGV.replace argv
