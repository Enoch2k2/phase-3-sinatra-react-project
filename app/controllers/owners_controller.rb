class OwnersController < ApplicationController
  get "/owners" do
    @owners = Owner.all
    @owners.to_json(include: [:pets])
  end
end