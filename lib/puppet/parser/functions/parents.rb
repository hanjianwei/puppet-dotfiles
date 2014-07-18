module Puppet::Parser::Functions
  newfunction(:parents, :type => :rvalue) do |args|
    unless args.length == 1
      raise Puppet::Error, "Must provide exactly one arg to parents"
    end

    unless args.first.start_with?('/')
      raise Puppet::Error, "File path must be absolute"
    end

    output = []
    path = File.dirname(args.first)

    until path == '/'
      output.push(path)
      path = File.dirname(path)
    end

    output
  end
end
