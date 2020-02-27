class SightingsController < ApplicationController
	def show
		sighting = Sighting.find_by_id(params[:id])
		if sighting
			render json: sighting, :include => [{:bird => {:except => [:updated_at, :created_at]}}, {:location => {:only => [:latitude, :longitude]}}]
		else
			render json: {message: "Sighting not found."}
		end
	end
end