class SearchController < ApplicationController
  def index
    @members = PatronusApiService.get_members_for_house(params[:house])
  end
end
