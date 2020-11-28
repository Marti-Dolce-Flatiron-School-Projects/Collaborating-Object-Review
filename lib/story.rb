# frozen_string_literal: true
require 'pry'
# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com
# story.rb
class Story
  attr_accessor :name
  attr_reader :author # Belongs to author

  def initialize
    @stories = [] #has many stories
    @author = author
  end

  def author=(author)
    @author = author
  end
end
