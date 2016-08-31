# -*- encoding : utf-8 -*-
# frozen_string_literal: true

require 'rake/testtask'

require './spec/_helpers'

namespace :spec do
  Rake::TestTask.new :unit do |task|
    task.loader     = 'file://spec/loader'
    task.test_files = FileList['**/*.spec']
  end
end
