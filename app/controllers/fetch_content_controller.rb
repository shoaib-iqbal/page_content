class FetchContentController < ApplicationController


	def import_content
		if params[:url].present?
			content = Content.save_content(params[:url])
			render :json => {:message => "content created",:h1 => content.tags['h1'],:h2 => content.tags['h2'],:h3 => content.tags['h3'],:links => content.tags['links'] }
		else
			render :json => {:message => "url is not present"}
		end
		
	end

	def all_pages
		@page = Link.all
		render :json => {:status => :ok, :pages => @page}
	end
end
