class UserSearchForm

  attr_reader :query

  def initialize(query)
    @query = query
  end
end