class DriversController < ApplicationController
  def index
		@drivers = Driver.all
	end

	def show
		@driver = Driver.find(params[:id])
	end

	def new
	end

	def create
		cars_ids = params[:driver].delete(:cars_ids)
		@driver = Driver.new(driver_params)

		for car_id in cars_ids
			if car_id != ""
				car = Car.find(car_id)
				@driver.cars << car
			end
		end

		@driver.save
		redirect_to @driver
	end

	private
		def driver_params
			params.require(:driver).permit(:name, :email, :birthdate, :image)
		end
end
