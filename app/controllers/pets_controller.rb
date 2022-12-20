class PetsController < ApplicationController

  # index route
  get "/pets" do
    @pets = Pet.all
    @pets.to_json(include: [
      owner: { except: [:created_at, :updated_at]}
    ])
  end

  # show route
  get "/pets/:id" do
    find_pet
    @pet.to_json(include: [
      owner: { except: [:created_at, :updated_at]}
    ])
  end

  # create route
  post "/pets" do
    # figure out what kind of data we have!
    @pet = Pet.new(params)
    if @pet.save
      @pet.to_json(include: [
        owner: { except: [:created_at, :updated_at]}
      ])
    else
      { errors: @pet.errors.full_messages }.to_json
    end
  end

  # update route
  patch "/pets/:id" do
    find_pet
    if @pet.update(params)
      @pet.to_json(include: [
        owner: { except: [:created_at, :updated_at]}
      ])
    else
      { errors: @pet.errors.full_messages }.to_json
    end
  end 

  # destroy route
  delete "/pets/:id" do
    find_pet

    @pet.destroy

    { message: "#{@pet.name} was destroyed"}.to_json
  end

  private
    def find_pet
      @pet = Pet.find(params[:id])
    end
end