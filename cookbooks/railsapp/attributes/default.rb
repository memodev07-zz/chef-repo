default['railsapp']['app_name'] = 'armela'

node.override['nginx']['default_site_enabled'] = false
node.override['nginx']['client_max_body_size'] = '300M'
override['rvm']['user_installs'] = [
  {
    'user'          => 'vagrant',
    'default_ruby'  => "ruby-2.2.0@#{node['railsapp']['app_name']}",
    'rubies'        => ['ruby-2.2.0'],
    'install_rubies' => true,
    'global_gems' => [
      { :name => 'bundler' }
    ],
    'rvmrc' => {
      'rvm_trust_rvmrcs_flag' => 1,
      'rvm_use_flag' => 2,
      'rvm_pretty_print_flag' => 1,
      'rvm_gemset_create_on_use_flag' => 1,
      'rvm_autolibs_flag' => :disabled
    }
  }
]