#!/usr/bin/env ruby

git_bundles = [ 
  "git://github.com/msanders/snipmate.vim.git",
  "git://github.com/tpope/vim-fugitive.git",
  "git://github.com/kchmck/vim-coffee-script.git",
  "git://github.com/tpope/vim-haml.git",
  "git://github.com/tpope/vim-markdown.git",
  "git://github.com/Raimondi/delimitMate",
  "git://github.com/tpope/vim-rails.git",
  "git://github.com/tpope/vim-repeat.git",
  "git://github.com/tpope/vim-surround.git",
  "https://github.com/scrooloose/syntastic.git",
  "git://github.com/tsaleh/vim-align.git",
  "git://github.com/kana/vim-textobj-user.git",
  "git://github.com/nelstrom/vim-textobj-rubyblock.git",
  "git://github.com/vim-ruby/vim-ruby.git",
  "git://github.com/edsono/vim-matchit.git"
]

vim_org_scripts = [
  ["IndexedSearch", "7062",  "plugin"],
  ["jquery",        "12107", "syntax"],
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.cd(bundles_dir)

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

Dir.chdir(bundles_dir) do
  `hg clone http://bitbucket.org/ns9tks/vim-l9`
  `hg clone http://bitbucket.org/ns9tks/vim-fuzzyfinder`
end
