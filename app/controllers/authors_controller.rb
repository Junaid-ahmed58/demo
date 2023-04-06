class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end
  def show
    @author = Author.find(params[:id])
  end
  def new
    @author = Author.new
  end
  def create 
    @author = Author.new(params[:author])
   if @author.save
     redirect_to @author
   else
     render 'new'
    end
  end
  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to authors_path
  end
private
  def author_params
   params.require(:author).permit(:name, :email, :father_name, :books)
  end
end
