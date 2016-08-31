# -*- encoding : utf-8 -*-
# frozen_string_literal: true

namespace :lint do
  task :all do
    sh 'bundle exec rubocop --display-cop-names --auto-correct'
  end

  desc 'lint a single file: TEST=pathname'
  task :file do
    sh "bundle exec rubocop --display-cop-names --auto-correct #{ENV['TEST']}"
  end

  task :ci do
    sh 'bundle exec rubocop --display-cop-names'
  end
end
