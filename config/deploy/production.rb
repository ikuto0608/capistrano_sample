set :stage, :production
set :branch, 'master'

role :app, %w{vagrant@192.168.33.20}
role :web, %w{vagrant@192.168.33.20}
role :db, %w{vagrant@192.168.33.20}

set :ssh_options, {
  keys: [File.expand_path('~/.ssh/insecure_private_key')],
  forward_agent: true
}
