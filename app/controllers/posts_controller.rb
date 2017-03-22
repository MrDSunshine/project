class PostsController < ApplicationController
	before_action :set_post, only: [:edit, :update, :show, :destroy]

	def index
		@posts = Post.all	
	end

	def new
		@post = Post.new
	end

	def edit
		
	end

	def create
		#render plain: params[:post].inspect
		@post = Post.new(post_params)
		if @post.save
			flash[:success] = "Post was successfully created"
			redirect_to post_path(@post)
		else
			render 'new'
		end
		#@post.save
		#redirect_to post_path(@post)
	end

	def update
		
		if @post.update(post_params)
			flash[:success] = "Post was successfully updated"
			redirect_to post_path(@post)
		else
			render 'edit'
	end

	def show
		
	end

	def destroy
		
		@post.destroy
		flash[:danger] = "Post was successfully deleted"
		redirect_to post_path
	end

	private
	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :description)
	end
end