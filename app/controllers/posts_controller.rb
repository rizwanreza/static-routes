class PostsController < ApplicationController
  # GET /posts
  # GET /posts.xml
  
  get "/goodbye" do
    render :text => "goodbye"
  end
end
