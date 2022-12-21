class CharactersController < ApplicationController
require "rest-client"
require "json"

  def index
    result = RestClient.get("http://localhost:3001/api/v1/characters")
    @characters = JSON.parse(result)
  end

  def show
    # http://localhost:3000/api/v1/characters/:id
    result = RestClient.get("http://localhost:3001/api/v1/characters/#{params[:id]}")
    @character = JSON.parse(result)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
