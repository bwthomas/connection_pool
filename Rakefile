begin
  require 'bundler'
  Bundler::GemHelper.install_tasks
rescue LoadError
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'test'
  test.warning = true
  test.pattern = 'test/**/test_*.rb'
end

desc 'Start IRB with preloaded environment'
task :console do
  exec 'irb', "-I#{File.join(File.dirname(__FILE__), 'lib')}", '-rconnection_pool'
end

task :default => :test
