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
    result = RestClient.post('http://localhost:3001/api/v1/characters', { 'name' => params['name'], 'actor' => params['actor'], 'info' => params['info'], 'image_url' => params['iamge_url'] }.to_json, { content_type: :json, accept: :json } )
    if result.code == 201
      redirect_to characters_path
    else
      render '/characters/new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
