IRB.conf[:PROMPT_MODE]  = :SIMPLE
IRB.conf[:USE_READLINE] = true
IRB.conf[:AUTO_INDENT]=true
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

def unbundled_require(gem)
  # https://gist.github.com/2643079
  if defined?(::Bundler)
    spec_path = Dir.glob("#{Gem.dir}/specifications/#{gem}-*.gemspec").last
    if spec_path.nil?
      warn "Couldn't find #{gem}"
      return
    end

    spec = Gem::Specification.load spec_path
    spec.activate
  end

  begin
    require gem
    yield if block_given?
  rescue Exception => err
    warn "Couldn't load #{gem}: #{err}"
  end
end
 
# Then use like this
# unbundled_require 'wirb' do
#   Wirb.start
#   end
begin
  unbundled_require 'wirble' do
    Wirble.init
    Wirble.colorize
  end
  unbundled_require 'hirb' do
    Hirb.enable
    extend Hirb::Console
  end
  require 'pp'
  require 'irb/ext/save-history'
  require 'hirb/import_object'
  require 'irb/completion'
rescue LoadError => e
  puts "Gems missing: #{e}"
end


# Method to pretty-print object methods
# Coded by sebastian delmont
# http://snippets.dzone.com/posts/show/2916
class Object
  ANSI_BOLD       = "\033[1m"
  ANSI_RESET      = "\033[0m"
  ANSI_LGRAY    = "\033[0;37m"
  ANSI_GRAY     = "\033[1;30m"

  # Print object's methods
  def pm(*options)
    methods = self.methods
    methods -= Object.methods unless options.include? :more
    filter = options.select {|opt| opt.kind_of? Regexp}.first
    methods = methods.select {|name| name =~ filter} if filter

    data = methods.sort.collect do |name|
      method = self.method(name)
      if method.arity == 0
        args = "()"
      elsif method.arity > 0
        n = method.arity
        args = "(#{(1..n).collect {|i| "arg#{i}"}.join(", ")})"
      elsif method.arity < 0
        n = -method.arity
        args = "(#{(1..n).collect {|i| "arg#{i}"}.join(", ")}, ...)"
      end
      klass = $1 if method.inspect =~ /Method: (.*?)#/
      [name, args, klass]
    end
    max_name = data.collect {|item| item[0].size}.max
    max_args = data.collect {|item| item[1].size}.max
    data.each do |item| 
      print " #{ANSI_BOLD}#{item[0].to_s.rjust(max_name)}#{ANSI_RESET}"
      print "#{ANSI_GRAY}#{item[1].ljust(max_args)}#{ANSI_RESET}"
      print "   #{ANSI_LGRAY}#{item[2]}#{ANSI_RESET}\n"
    end
    data.size
  end
end


# Clear the screen
def clear
  system 'clear'
end

# Shortcuts
alias c clear
