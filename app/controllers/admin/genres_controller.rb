class Admin::GenresController < ApplicationController
  
  def index
    @genre_name = Genre.all
  end
  
  def create
    
  end
  
  def edit
  end
  
  def update
  end
end
