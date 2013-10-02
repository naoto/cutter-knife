require 'optparse'

module Cutter
  module Knife
    class Option < Hash

      def initialize(args)
        super nil
        op = OptionParser.new
        op.on('-p', '--port VAL'){ |v| self[:port] = v }
        op.on('-b', '--bind VAL'){ |v| self[:bind] = v }
        op.parse!(args)
      end

    end
  end
end
