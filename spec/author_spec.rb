# frozen_string_literal: false

require_relative '../config/environment'

describe 'Author' do
  it 'has a name' do
    author = Author.new
    author.name = 'Hemingway'
    expect(author.name).to eq('Hemingway')
  end
  # Now that we've described authors, we add stories
  context 'with stories' do
    describe '#stories' do
      it 'has an empty array of stories when initialized' do
        author = Author.new
        # add stories array.  Doesn't need attr_accessor because of complexity
        expect(author.stories).to match_array([]) # new authors have no associated stories
      end
    end

    # Now assign author stories. Requires adding stories to array
    describe '#add_story' do
      it 'can add a story instances into stories array' do
        author = Author.new # initialize author
        story = Story.new # initialize story

        author.add_story(story) # add story to author stories?

        expect(author.stories).to include(story) # author story maps to the new story
      end

      it 'only allows stories to be pushed into stories array' do # ensure the story string validates
      author = Author.new # initialize author
      story = 'The Old Man and the Sea' # add string.story

      expect { author.add_story(story) }.to raise_error(AssociationTypeMismatchError)
                                                                  # custom error type
                                                                  # Where can this be defined? This will check an objects type
      end
    end
  end
end
