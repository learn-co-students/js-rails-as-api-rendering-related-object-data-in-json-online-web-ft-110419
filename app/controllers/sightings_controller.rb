class SightingsController < ApplicationController
  
  def show
    sighting = Sighting.find_by(id: params[:id])
    if sighting
      render json: sighting, include: {
        bird: { except: [:created_at, :updated_at] },
        location: { except: [:created_at, :updated_at] }
      }, except: [:created_at, :updated_at]
    else
      render json: { message: "No sighting found with that id" }
    end
  end
  
end
