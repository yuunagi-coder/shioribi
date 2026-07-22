class PostsController < ApplicationController
    before_action :set_post, only: [ :show, :edit, :update, :destroy ]
    def index
        @posts = Post.all.order(created_at: :desc)
    end

    def my_posts
        @posts = current_user.posts.order(created_at: :desc)
    end

    def show
    end

    def new
        @post = Post.new
    end

    def create
        @post = current_user.posts.new(post_params)
        if @post.save
            if params[:post][:emotion_tag_ids].present?
                @post.emotion_tag_ids = params[:post][:emotion_tag_ids]
            end
            redirect_to @post, notice: "栞を挟みました"
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @post.update(post_params)
            redirect_to @post, notice: "栞を更新しました"
        else
            render :edit
        end
    end

    def destroy
        @post.destroy
        redirect_to my_posts_posts_url, notice: "栞を削除しました"
    end

    private

    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:content, :memo, :source, emotion_tag_ids: [])
    end
end
