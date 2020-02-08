require 'pp'

BASH_HISTORY_FILE_PATH = "#{ENV['HOME']}/.bash_history"
ZSH_HISTORY_PATH = "#{ENV['HOME']}/.zsh_history"

bash_hist_file = File.read(BASH_HISTORY_FILE_PATH)

arr_bash_history = bash_hist_file.split("\n")
# puts arr_bash_history.inspect
zsh_history_file = File.open(ZSH_HISTORY_PATH, 'a')

time = Time.now.to_i
arr_bash_history.each do |hist|
  time += 1
  zsh_history_file.write(": #{time}:0;#{hist}\n")
end

zsh_history_file.close
