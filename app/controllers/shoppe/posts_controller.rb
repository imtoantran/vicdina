module Shoppe
  class PostsController < Shoppe::ApplicationController
    before_filter { @active_nav = :posts }
    def index
      @query = Post.ordered.page(params[:page]).search(params[:q])
      @posts = @query.result
    end
    def edit

    end
  end
end

