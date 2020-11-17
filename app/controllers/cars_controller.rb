class CarsController < ApplicationController
	def index
		@cars = Car.all
	end

	def show
		@car = Car.find(params[:id])
	end

	def new
	end

	def create
		drivers_ids = params[:car].delete(:drivers_ids)
		@car = Car.new(car_params)

		for driver_id in drivers_ids
			if driver_id != ""
				driver = Driver.find(driver_id)
				@car.drivers << driver
			end
		end

		@car.save
		redirect_to @car
	end

	private
		def car_params
			params.require(:car).permit(:title, :type, :color, :driverName, :image, :drivers_ids)
		end
end
