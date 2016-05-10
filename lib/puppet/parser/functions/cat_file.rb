module Puppet::Parser::Functions
    newfunction(:cat_file, :type => :rvalue) do |args|
        raise(Puppet::ParseError, "cat_file(): Wrong number of arguments, expecting 1") if args.size > 1
        filename = args[0]
        raise(Puppet::ParseError, "cat_file(): #{filename} does not exist") if !File.file?(filename)
        begin 
            contents = File.open(filename, 'r'){ |file| file.read }
        rescue SystemCallError
            raise Puppet::ParseError, "cat_file(): Could not read #{filename}"
        end
        return contents
    end
end
