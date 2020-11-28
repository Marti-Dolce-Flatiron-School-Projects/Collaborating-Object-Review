require_relative '../lib/author'
require_relative '../lib/category'
require_relative '../lib/story'
require_relative '../spec/spec_helper'

# create custom error. associate with type error class
class AssociationTypeMismatchError < TypeError; end