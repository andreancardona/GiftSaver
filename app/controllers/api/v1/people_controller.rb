class Api::V1::PeopleController < ApplicationController
  before_action :set_person, only: [:show,:update,:destroy]

  def index
    people = Person.all
    render json: people, status: 200
  end

  def create
    person = Person.create(person_params)
    render json: person, status: 201
  end

  def update
    @person.update(person_params)
    render json: @person, status: 200
  end

  def destroy
    personId = @person.id
    @person.destroy
    render json: {message:"Zap! Person deleted", personId:personId}
  end

  def show
    render json: @person, status: 200
  end

  private
  def person_params
    params.permit(:name, :img, :birth_day)
  end

  def set_person
    @person = Person.find(params[:id])
  end
end
