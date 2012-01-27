#!/usr/bin/env ruby

git_bundles = [ 
  "git://github.com/tpope/vim-fugitive.git",
  "https://github.com/sickill/vim-pasta.git",
  "git://github.com/tpope/vim-haml.git",
  "git://github.com/kchmck/vim-coffee-script.git",
  "git://github.com/Raimondi/delimitMate",
  "https://github.com/kchmck/vim-coffee-script.git",
  "git://github.com/tpope/vim-rails.git",
  "git://github.com/tpope/vim-repeat.git",
  "git://github.com/tpope/vim-surround.git",
  "https://github.com/scrooloose/syntastic.git",
  "git://github.com/tsaleh/vim-align.git",
  "git://github.com/vim-ruby/vim-ruby.git",
  "git://github.com/edsono/vim-matchit.git",
  "git://github.com/pangloss/vim-javascript",
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.mkdir_p(bundles_dir)

Dir.chdir(bundles_dir) do

  puts "Trashing everything (lookout!)"
  Dir["*"].each {|d| FileUtils.rm_rf d }

  git_bundles.each do |url|
    dir = url.split('/').last.sub(/\.git$/, '')
    puts "  Unpacking #{url} into #{dir}"
    `git clone #{url} #{dir}`
    FileUtils.rm_rf(File.join(dir, ".git"))
  end

  vim_org_scripts.each do |name, script_id, script_type|
    puts "  Downloading #{name}"
    local_file = File.join(name, script_type, "#{name}.vim")
    FileUtils.mkdir_p(File.dirname(local_file))
    File.open(local_file, "w") do |file|
      file << open("http://www.vim.org/scripts/download_script.php?src_id=#{script_id}").read
    end
  end
end
