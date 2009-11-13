# connect
ActiveRecord::Base.configurations = {"test" => {
  :adapter => "sqlite3",
  :database => ":memory:",
}.with_indifferent_access}

ActiveRecord::Base.establish_connection(:test)

# create table
ActiveRecord::Schema.define(:version => 1) do
  create_table :users do |t|
    t.string    :name
    t.boolean   :sexy
    t.integer   :age
    t.timestamps
  end
end

# create model
class User < ActiveRecord::Base
  validates_length_of :name, :within=>2..20, :allow_nil=>true
end