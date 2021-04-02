class SessionController < ApplicationController
    skip_before_action :logged_in
    skip_before_action :verify_authenticity_token, only: :create
  
    def new
      @artist = Artist.new
      @all_artists = Artist.all
    end

    def create
      if pp request.env['omniauth.auth']
        session[:name] = request.env['omniauth.auth']['info']['name']
        session[:omniauth_data] = request.env['omniauth.auth']
        @artist = Artist.find_or_create_by(username: session[:omniauth_data][:info][:nickname])
        @artist.name = session[:name]
        @artist.hometown = session[:omniauth_data][:extra][:raw_info][:location]
        session[:artist_id] = @artist.id
        @artist.save
        
        redirect_to artist_path(@artist)
      else 
        @artist = Artist.find_by(name: params[:artist][:name])
        session[:artist_id] = @artist.id
        redirect_to artist_path(@artist)
      end
    end

    def destroy
      # session.delete("artist_id")
      reset_session
      redirect_to root_path
    end

  end