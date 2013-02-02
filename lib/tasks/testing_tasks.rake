# encoding: UTF-8

desc "Setup test db and run tests"
task test: :environment do
  Rake::Task['app:db:test:prepare'].execute
  Rake::Task['spec'].execute
end
