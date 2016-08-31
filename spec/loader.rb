# -*- encoding : utf-8 -*-
# frozen_string_literal: true

ARGV.replace(
  ARGV.select do |argument|
    case argument
    when /^-/ then
      argument
    else
      load File.expand_path argument

      false
    end
  end
)
