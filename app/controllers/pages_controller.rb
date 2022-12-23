class PagesController < ApplicationController

  def home
    result = RestClient.get("http://localhost:3001/api/v1/characters")
    @characters = JSON.parse(result)
  end

end
