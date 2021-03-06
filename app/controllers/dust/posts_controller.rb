module Dust
  class PostsController < ApplicationController

    filter_access_to :all

    layout 'cms'

    def index
      @posts = Post.all
    end

    def new
      @post = Post.new
    end

    def edit
      @post = Post.find(params[:id])
    end

    def create
      @post = Post.new(params[:post])

      if @post.save
        redirect_to posts_path, notice: 'Post was successfully created.'
      else
        render action: "new"
      end
    end

    def update
      @post = Post.find(params[:id])

      if @post.update_attributes(params[:post])
        redirect_to posts_path, notice: 'Post was successfully updated.'
      else
        render action: "edit"
      end
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy

      redirect_to posts_url
    end
  end
end
