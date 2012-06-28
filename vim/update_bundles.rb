#!/usr/bin/env ruby

git_bundles = [
  "git://github.com/tpope/vim-fugitive.git",
  "https://github.com/sickill/vim-pasta.git",
  "https://github.com/kien/ctrlp.vim.git",
  "git://github.com/tpope/vim-haml.git",
  "https://github.com/bbommarito/vim-slim.git",
  "https://github.com/groenewege/vim-less",
  "git://github.com/kchmck/vim-coffee-script.git",
  "https://github.com/briancollins/vim-jst.git",
  "git://github.com/Raimondi/delimitMate",
  "https://github.com/tpope/vim-endwise.git",
  "https://github.com/kchmck/vim-coffee-script.git",
  "git://github.com/tpope/vim-rails.git",
  "git://github.com/tpope/vim-repeat.git",
  "git://github.com/tpope/vim-surround.git",
  "https://github.com/msanders/snipmate.vim.git",
  "https://github.com/scrooloose/syntastic.git",
  "git://github.com/tsaleh/vim-align.git",
  "git://github.com/pangloss/vim-javascript",
  "https://github.com/Lokaltog/vim-powerline",
  "https://github.com/myusuf3/numbers.vim.git"
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")
autoload_dir = File.join(File.dirname(__FILE__), "autoload")

FileUtils.mkdir_p(bundles_dir)
FileUtils.mkdir_p(autoload_dir)

Dir.chdir(bundles_dir) do

  puts "Trashing everything (lookout!)"
  Dir["*"].each {|d| FileUtils.rm_rf d }

  git_bundles.each do |url|
    dir = url.split('/').last.sub(/\.git$/, '')
    puts "  Unpacking #{url} into #{dir}"
    `git clone #{url} #{dir}`
    FileUtils.rm_rf(File.join(dir, ".git"))
  end

  puts "installing pathogen"
  `curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim`
end
