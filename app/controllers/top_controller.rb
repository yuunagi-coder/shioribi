class TopController < ApplicationController
    skip_before_action :require_login, only: %i[index]
    def index
        @today = Date.today
        @day_of_week = %w[日 月 火 水 木 金 土][@today.wday]
        @post = current_user.posts.sample 
    end

    def introduction
    end  
end
