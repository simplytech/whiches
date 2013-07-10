require "whiches/version"

module Whiches
  def Whiches.whiches(cmd)
    exes = []
    exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
    ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
      exts.each { |ext|
        exe = File.join(path, "#{cmd}#{ext}")
        exes << exe if File.executable? exe
      }
    end

    if exes == []
      return nil
    else
      return exes
    end
  end
end
