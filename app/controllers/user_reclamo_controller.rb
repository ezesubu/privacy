class UserReclamoController < ApplicationController

	def	index
	end

	def	create
		user_reclamo = UserReclamo.new
		reclamo = Reclamo.find_by(_id: params[:asunto][0])
		user_reclamo[:text_reclamo] = params[:text_reclamo]
		user_reclamo[:user_name] ="EL pepes"		
		user_reclamo.reclamo = reclamo
		user_reclamo.date = DateTime.now		
		if user_reclamo.save
			UserMailer.send_reclamo(user_reclamo).deliver
           	flash[:valid] = "Su reclamo fue enviado";
           	redirect_to root_path
		end
	end	

end
