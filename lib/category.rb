# frozen_string_literal: true

require 'pry'
# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com
# category.rb
class Category
  attr_accessor :name

  def initialize
    @stories = [] # has_many stories interface
  end

end
