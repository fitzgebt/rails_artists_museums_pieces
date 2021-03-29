class SessionController < ApplicationController
    skip_before_action :logged_in
  
    def new
      @artist = Artist.new
    end
  
    def create
      if @artist = Artist.find_by(name: params[:artist][:name])
        session[:artist_id] = @artist.id
        redirect_to artist_path(@artist)
      else
        render 'new'
      end
    end
  
    def destroy
      session.delete("artist_id")
      redirect_to root_path
    end
  end