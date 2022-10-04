class MainController < ApplicationController
    def index    
        flash[:notice] = "Logged in sucessfully"
        flash[:alert] = "Invalid e-mail or password"
    end
end