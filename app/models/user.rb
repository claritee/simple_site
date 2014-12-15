class User < ActiveRecord::Base
  def self.find_by_query(query)
    users = User.arel_table
    User.where(users[:first_name].eq(query).or(users[:last_name].eq(query)))
  end
end
