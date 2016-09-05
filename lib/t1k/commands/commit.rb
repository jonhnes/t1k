module T1k
  module Commands
    class Commit

      def self.run(message, close, add, no_message)
        message ||= ""
        text_close = ''

        raise "Message can't be blank. Use --no-message to ignore this rule." if message.empty? && !no_message
        branch = T1k::Commands::Branch.actual_branch

        text_close = close ? 'close ' : 'ref'

        if close
          text_close = 'close '
        end

        text_add = add ? 'a' : ''

        system "git commit -#{text_add}m '[#{text_close}##{branch.strip}] #{message}'"
      end
    end
  end
end
