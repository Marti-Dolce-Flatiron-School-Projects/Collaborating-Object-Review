# frozen_string_literal: true

require_relative './config/environment'

puts 'Welcome to Authors, Stories, and Categories...'

def reload!
  load './lib/author.rb'
  load './lib/category.rb'
  load './lib/story.rb'
  load './spec/spec_helper.rb'
end
desc 'A console'
task :console do
  Pry.start
end
