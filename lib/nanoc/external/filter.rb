# encoding: utf-8

module Nanoc::External

  # Pipes content through an external process.
  #
  # For this filter to work, the external program must be able to receive input
  # from standard input and it must write its output to standard output.
  class Filter < Nanoc::Filter

    identifier :external

    # Executes this filter. Parameters passed to this filter
    # through `:options` will be passed to the specified command.
    #
    # @param [String] content The content to filter.
    #
    # @option params [Symbol] :options ([]) A list of options for the external command.
    #
    # @option params [Symbol] :exec ("") The name or the full path of the executable.
    #
    # @option params [Symbol] :debug (false) Set to true to enable debugging.
    #
    # @return [String] The filtered content
    #
    # @example
    #   filter :external, exec: 'multimarkdown', options: %w( --smart )
    #   filter :external, exec: '/usr/local/bin/htmlcompressor
    def run(content, params = {})
      debug = params.fetch(:debug, false)
      cmd   = params.fetch(:exec, nil)
      opts  = params.fetch(:options, [])

      if cmd.nil?
        raise Nanoc::Errors::GenericTrivial.new("nanoc-external: missing :exec argument")
      end

      cmd_with_opts = [ cmd ] + opts
      odebug(cmd_with_opts.join(' ')) if debug
      out = ''
      IO.popen(cmd_with_opts, mode='r+') do |io|
        io.write content
        io.close_write # let the process know you've given it all the data
        out = io.read
      end
      odebug(out) if debug
      out
    end

  private

    def odebug(msg)
      msg.each_line { |l| puts "\033[1;31mDEBUG:\033[0m #{l}" }
    end

  end

end
