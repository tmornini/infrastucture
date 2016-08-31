# -*- encoding : utf-8 -*-
# frozen_string_literal: true

task default: :test

desc 'run specs and lint'
task test: ['spec:unit', 'lint:all']

desc 'start guard'
task :guard do
  exec 'bundle exec guard'
end

desc 'lint code'
task lint: 'lint:all'

desc 'rebase all branches atop master'
task rebase: 'git:rebase'
