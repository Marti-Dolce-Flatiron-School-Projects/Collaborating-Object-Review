# frozen_string_literal: true

require 'pry'
# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com
# author.rb
# class Author
#   attr_accessor :name
#
#   def initialize
#     @stories = [] # has_many stories interface
#     # @stories = CollectionProxy.new([]) #inherits class Array
#   end
#
#   def stories
#     @stories
#   end
#
#   def add_story(story) # see line 25
#   raise AssociationTypeMismatchError unless story.is_a?(Story) # custom collection + errors without overrides to push
#
#   @stories << story
#   end
# end
# spec file #29 - #37
# class Array
#   def push(obj)
#     raise AssociationTypeMismatchError if obj.class != Story
#   end
# end
class Author
  attr_accessor :name

  def initialize
    @stories = [] # has_many stories interface
  end

  def stories # has_many stories interface
    @stories.dup.freeze
  end

  def add_story(story) # has_many stories interface
  raise AssociationTypeMismatchError, "#{story.class} received, Story expected." if !story.is_a?(Story)
  @stories << story
  story.author = self unless story.author == self
  end

  def bibliography
    self.stories.collect{|s| s.name} # You need all stories to be instances of Story because they must respond to #name to work
    # @stories.collect(&:name) #=> Symbol to Proc
  end

  def categories # has_many categories through stories
    self.stories.collect{|s| s.category}.uniq
  end
end
