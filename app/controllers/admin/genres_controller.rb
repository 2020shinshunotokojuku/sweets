class Admin::GenresController < ApplicationController
 def index
   @genre=Genre.new
   @genres=Genre.all
 end
 def create
 	genre=Genre.new(genre_params)
 	if params[:genre][:is_vaild] == true
 		genre.save
 		genre.is_valid = true
	 	redirect_to admin_genres_path
	 else
	 	genre.is_valid = false
	 	genre.save
	 	redirect_to admin_genres_path
	 end
 end
 def edit
 	@genre=Genre.find(params[:id])
 end
 def update
 	genre=Genre.find(params[:id])
 	if params[:genre][:is_vaild] == true
 		genre.is_valid = true
	 	genre.update(genre_params)
	 	redirect_to admin_genres_path
	 else
	 	genre.is_valid = false
	 	genre.update(genre_params)
	 	redirect_to admin_genres_path
	 end
 end
 private
 def genre_params
 	params.require(:genre).permit(:name, :is_valid)
 end
end