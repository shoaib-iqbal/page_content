class FetchContentController < ApplicationController


	def import_content
		if params[:url].present?
			Content.save_content(params[:url])
			render :json => {:message => "content created"}
		else
			render :json => {:message => "url is not present"}
		end
		
	end

	def all_pages
		@page = Link.all
		render :json => {:status => :ok, :pages => @page}
	end
end
