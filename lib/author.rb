# frozen_string_literal: true

require 'pry'
# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com
# author.rb
class Author
  attr_accessor :name

  def initialize
    @stories = [] # has_many stories interface
    # @stories = CollectionProxy.new([]) #inherits class Array
  end

  def stories
    @stories
  end

  def add_story(story) # see line 25
  raise AssociationTypeMismatchError unless story.is_a?(Story) # custom collection + errors without overrides to push

  @stories << story
  end
end
# spec file #29 - #37
# class Array
#   def push(obj)
#     raise AssociationTypeMismatchError if obj.class != Story
#   end
# end