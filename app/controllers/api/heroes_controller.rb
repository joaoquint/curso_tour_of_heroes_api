class Api::HeroesController < ApplicationController
  include Authenticable

  before_action :authenticate_with_token
  before_action :set_hero, only: %i[show update destroy]

  # GET /heroes
  def index
    @heroes = Hero.by_token(@token).search(params[:name]).sorted_by_name

    # logger.debug "===- TOKEN: #{@token}" debug to send for log path in development.log level
    # logger.info "===- TOKEN: #{@token}" debug to send for log path in production.log level
    render json: @heroes
  end

  # GET /heroes/1
  def show
    render json: @hero
  end

  # POST /heroes
  def create
    @hero = Hero.new(hero_params.to_h.merge!({ token: @token }))

    # byebug: (another way to debug stoping execution and being possible to text a command.)
    if @hero.save
      render json: @hero, status: :created, location: api_hero_url(@hero)
    else
      render json: @hero.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /heroes/1
  def update
    if @hero.update(hero_params)
      render json: @hero
    else
      render json: @hero.errors, status: :unprocessable_entity
    end
  end

  # DELETE /heroes/1
  def destroy
    @hero.destroy
  end

  private

  def set_hero
    @hero = Hero.by_token(@token).find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(:name)
  end
end