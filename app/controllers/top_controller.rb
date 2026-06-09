class TopController < ApplicationController
    def index
        @today = Date.today
        @day_of_week = %w[日 月 火 水 木 金 土][@today.wday]
    end
end