# Collaborating Objects Review (Author, Stories, Categories)

## Authors
* has_many stories
* has_many categories through stories

## Stories
* belongs to an author
* belongs to a category

## Categories
* has_many stories
* has_many authors, through stories

# Expected Output

```ruby
hemingway = Author.new
hemingway.stories #=> [#{Story},#{Story})
```


## TASKS   
- [x] Generate spec tests + gem files. Res. bundler
```ruby
  % spec --init: creates .rspec and spec.rb
  % bundler init: creates project gemfile
  % add requirements to gemfile/gemfile.lock
  % use bundle install to update/add gems
  % if using a rakefile, include in gemfile
```
- [x] Generate rake file (If necessary).  A rake file automates functions required to build, test, package and install programs. Res. rake
	
```ruby
#NOTE:  If using terminal example**
echo "source 'https://rubygems.org'" >> Gemfile
echo "gem 'rake'" >> Gemfile
bundle install
bundle exec rake -T
```
- [x] Generate environment.rb map paths
* Add story, author category RB's to environment
* Add environment.rb with path (require\_relative) to spec_helper
* Make sure environment.rb has links to lib files 

- [x] Code Classes & Methods, then Test
```ruby
#NOTE: Tracks contexts and describe formats
rspec --format=documentation
#=> Returns spec documentation:
Author
  has a name
  with stories
    #stories
      has an empty array of stories when initialized ...
```
- [ ] Create Console to visually test
* Add rake file
* Add rakelib (if required)
* Add lib with modular tasks (if required)
* Add tasks or task files (in namespace)
* Declare all required dependencies
* Add prerequisites

## Resources List: Rake
*Basic Rake by Jim Weirich (2012)
[https://www.youtube.com/watch?v=AFPWDzHWjEY]

*Ruby Guides:*
[https://www.rubyguides.com/2019/02/ruby-rake/]

*Dev Dungeon:*      
[https://www.devdungeon.com/content/ruby-rake-tutorial]

*ruby.github.io*
[https://github.com/ruby/rake]

