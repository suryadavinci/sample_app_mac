class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build

      #@feed_items = current_user.feed.paginate(page: params[:page])   #gives n+1 query issue
      @feed_items = current_user.feed.includes(:user).paginate( page: params[:page])   #n+1 query issue resolved

    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def fb
  end
end
