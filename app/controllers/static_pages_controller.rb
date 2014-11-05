class StaticPagesController < ApplicationController
 def home
        @micropost = current_user.microposts.build if signed_in?
    end
  def help
  end
  def about
  end
  def about
          flash[:notice] = "Testing the flash"
      end
  def home
 if signed_in?
   @micropost  = current_user.microposts.build
   @feed_items = current_user.feed
 end
end
end
