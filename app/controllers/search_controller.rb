class SearchController < ApplicationController
  def index
    @members = PotterApiService.new.get_members_for_house(params[:house])
  end
end
