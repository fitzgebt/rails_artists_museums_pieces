class StaticController < ApplicationController
    skip_before_action :logged_in
  
    def home
    end
  end