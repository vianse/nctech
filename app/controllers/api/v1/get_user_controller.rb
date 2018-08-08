class Api::V1::GetUserController <ApplicationController
require 'uri'
require 'net/http'

skip_before_action :verify_authenticity_token
	def index
      # organizacion = params[:organizacion]
       url = "https://intranet-10d95.firebaseio.com/usuarios.json"
    	 response = RestClient::Request.execute(
				method: :get,
       	url: url,
			# 	headers: {"Content-Type" => "application/json"}
       )
  	render json: { :mensaje => JSON.parse(response.body) }
		#render json: { :mensaje => "JSON.parse(response.body)" }
	end
end
