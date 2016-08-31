# -*- encoding : utf-8 -*-
# frozen_string_literal: true

require 'rake/testtask'

namespace :spec do
  Rake::TestTask.new :unit do |task|
    task.loader     = 'file://spec/loader'
    task.libs       = ['.']
    task.ruby_opts  = ['-rspec/_helpers.rb']
    task.test_files = FileList['**/*.spec']
    task.warning    = false
  end
end
