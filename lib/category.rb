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

  def stories # has_many stories interface
    @stories.dup.freeze
  end

  def add_story(story) # has_many stories interface
    raise AssociationTypeMismatchError, "#{story.class} received, Story expected." unless story.is_a?(Story)

    @stories << story
    story.category = self unless story.category == self
  end

  def authors # has_many authors through stories
    stories.collect(&:author).uniq
  end
end
