class AppointmentsController < ApplicationController
	def show
		find_appointment
	end

	def new
		@appointment = Appointment.new
	end

	def create
	end



	private

	def appointments_params
		params.require(:appointments).permit(
			:doctor, :patient, :appointments_datetime
		)
	end

	def find_appointment
		@appointment = Appointment.find(params[:id])
	end
end
