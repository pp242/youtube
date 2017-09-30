class PostController < Sinatra::Base
	configure :development do
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")

	set :views, Proc.new { File.join(root,'views')}



	get "/videos" do  		###index
		@videos = Video.all
		@page_header = "All the Clips"
		erb :"videos/index"
	end	

	get "/videos/new" do 			### new
		erb :"videos/new"
	end	

	post "/videos" do 			### create
		new_video = Video.new
		new_video.title = params[:title]
		new_video.body = params[:body]
		new_video.save
		redirect '/videos'

	end


	get "/videos/:id" do 		### show
		@videos = Video.find(params[:id])
		@page_header = "Video #{@videos.id}"
		erb :"videos/show"
	end	

	get "/videos/:id/edit" do 		#### edit
		@video = Video.find(params[:id])
		erb :"videos/edit"
	end
	
	put "/videos/:id" do 			### update
		video = Video.find(params[:id])
		video.title = params[:title]
		video.body = params[:body]
		video.save

		redirect "/videos/#{video.id}"
		
	end

	delete "/videos/:id" do    		### delete
		Video.destroy(params[:id])

		redirect '/videos'
	end

end	


















