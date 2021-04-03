class ArtistsController < ApplicationController
    skip_before_action :logged_in, only: [:new, :create]

    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def create
        (@artist = Artist.create(artist_params))
        if @artist.id
            session[:artist_id] = @artist.id
            redirect_to artist_path(@artist)
        else
            render 'new'
        end
    end

    def show
        @artist = Artist.find_by(id: params[:id])
    end

    def edit
        @artist = Artist.find_by(id: params[:id])
    end

    def update
        @artist = Artist.find_by_id(params[:id])
        if params[:artist][:username] == "" || params[:artist][:name] == ""
            redirect_to edit_artist_path(@artist)
        else
            @artist.update(name: params[:artist][:name], username: params[:artist][:username], hometown: params[:artist][:hometown])
            if params[:artist][:password] != ""
                @artist.update(password: params[:artist][:password])
            end
            message = "Profile Updated"
            redirect_to artist_path(@artist), flash: {message: message}
        end
    end

    def destroy
    end

    private
  
    def artist_params
      params.require(:artist).permit(:username, :name, :hometown, :password)
    end
end
