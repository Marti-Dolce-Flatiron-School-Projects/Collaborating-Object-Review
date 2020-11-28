# frozen_string_literal: false

describe 'Story' do
  it 'has a name' do
    story = Story.new
    story.name = 'The Old Man and the Sea'
    expect(story.name).to eq('The Old Man and the Sea')
  end
end
