require "jsdiff/version"
require "active_support/core_ext/hash"
require "json"
require "pygments.rb"

class JSDiff

    class << self
      def parse(files, opts=nil)
        a_path, b_path = files.take(2)
        a, b = [a_path, b_path].map do |path|
         JSON.parse(File.read(path)) 
        end

        c = a.diff(b)

        diff_js = JSON.pretty_generate(c)
        return diff_js if opts.nosyntax?

        Pygments.highlight(diff_js, :formatter => 'terminal', :lexer => 'javascript')
      end
    end

end
