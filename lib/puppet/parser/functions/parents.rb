module Puppet::Parser::Functions
  newfunction(:parents, :type => :rvalue) do |args|
    output = []
    path = args[0]

    until path == '/' or path == '.'
      path = File.dirname(path)
      output.push(path)
    end

    output
  end
end
