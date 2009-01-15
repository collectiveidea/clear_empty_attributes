require 'rubygems'

#instant database with acts_as_fu http://github.com/nakajima/acts_as_fu
require 'acts_as_fu'
include ActsAsFu
connect!

#create model table
ActiveRecord::Schema.define(:version => 1) do
  create_table :users do |t|
    t.string    :name
    t.boolean   :sexy
    t.integer   :age
    t.timestamps
  end
end

#create model
class User < ActiveRecord::Base
  validates_length_of :name, :within=>2..20, :allow_nil=>true
end