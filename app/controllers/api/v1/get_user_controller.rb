class Api::V1::GetUserController <ApplicationController
	require 'uri'
	require 'net/http'
	require 'base64'
	require 'open-uri'
	require 'rest-client'
	
skip_before_action :verify_authenticity_token
	def index
      # organizacion = params[:organizacion]
       url = "https://intranet-10d95.firebaseio.com/usuarios.json?print=pretty"
    	 response = RestClient::Request.execute(
				method: :get,
       			url: url,
	   )

	   valor = response.body
	   
	   new_hash = JSON.parse(valor)
	   e = new_hash.keys.map do |w|
			new_hash[w]
	   end
	   puts e

	   t = e.map do |r|
		{
			:id => r['uid'],
			:name => r['nombre']
		}
		
	   end

	
  	   render :json => t
		#render json: { :mensaje => "JSON.parse(response.body)" }
	end

end



