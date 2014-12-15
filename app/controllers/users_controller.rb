class UsersController < ApplicationController
  def index
    @users = search_params.present? ? User.find_by_query(search_params[:query].strip) : User.all
  end

  private

  def search_params
    params.require(:user_search_form).permit(:query)
  end
end