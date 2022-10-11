class WelcomeController < ApplicationController
  def index
    @posts = params[:query] ? Post.where("title LIKE ?", "%#{params[:query]}%") : []

    respond_to do |format|
      format.html {}
      format.turbo_stream {
        render turbo_stream: turbo_stream.replace("posts", partial: "welcome/results")
      }
    end
  end
end
