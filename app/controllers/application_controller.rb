class ApplicationController < ActionController::Base
      protect_from_forgery
      protect_from_forgery with: :null_session
      include SessionsHelper 
      private
def current_cart
Cart.find(session[:cart_id])
rescue ActiveRecord::RecordNotFound
cart = Cart.create
session[:cart_id] = cart.id
cart
end   # NEW LINE
    end