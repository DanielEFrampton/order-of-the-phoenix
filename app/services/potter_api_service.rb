class PotterApiService
  def get_members_for_house(house)
    get_members_json(house).map do |member_info|
      Member.new(member_info)
    end
  end

  private

    def get_members_json(house)
      response = api_connection.get('/v1/characters') do |get|
        get.params['orderOfThePhoenix'] = true
        get.params['house'] = house
      end
      JSON.parse(response.body)
    end

    def api_connection
      Faraday.new('https://www.potterapi.com/') do |f|
        f.params[:key] = ENV['POTTER_API_KEY']
        f.adapter Faraday.default_adapter
      end
    end
end
