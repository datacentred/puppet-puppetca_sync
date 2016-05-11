module Puppet::Parser::Functions
    newfunction(:read_file, :type => :rvalue) do |args|
        raise(Puppet::ParseError, "read_file(): Wrong number of arguments, expecting 1") if args.size > 1
        filename = args[0]
        begin 
            contents = File.open(filename, 'r'){ |file| file.read }
        rescue StandardError => exception
            raise Puppet::ParseError, "read_file(): Could not read #{filename} #{exception.message}"
        end
        return contents
    end
end
