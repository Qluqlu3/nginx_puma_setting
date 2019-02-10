app_dir = File.expand_path("../..", __FILE__)
tmp_dir = "#{app_dir}/tmp"

bind "unix://#{tmp_dir}/sockets/puma.sock"

# 環境選択
rails_env = ENV['RAILS_ENV'] || "devlopment"
environment rails_env

stdout_redirect "#{tmp_dir}/logs/puma.stdout.log", "#{tmp_dir}/logs/puma.stderr.log", true
pidfile "#{tmp_dir}/pids/puma.pid"
state_path "#{tmp_dir}/pids/puma.state"

# tmp sockets pids logsフォルダを作成する
# sudo mkdir 
# 先程は作成したフォルダにファイルを作成する
# puma.stdout.log puma.stderr.log puma.pid puma.state
# sudo vi sudo 
# chmod +x /etc/init.d/puma
# sudo /etc/init.d/puma start
# ps axu|grep puma 動作確認
# パーミッションを確認
# ls -la
# sudo chown -r ubuntu(ユーザー名) ディレクトリ

