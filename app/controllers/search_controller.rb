class SearchController < ApplicationController
def search 
        
          @lot = Lot.find_by_sql(["select * from lots where title like? OR num LIKE?OR description LIKE?",
            "%#{params[:search]}%","%#{params[:search]}%","%#{params[:search]}%"])
        if @lot.length ==0
          if params[:search].empty? == false && params[:search].blank? == true
            flash[:notice] = "Can not be blank!" 
            redirect_to :action => 'home',:controller=> 'static_pages'
          else
            flash[:notice] = "Not Found!" 
            redirect_to :action => 'home',:controller=> 'static_pages'
          end
        end
      end
    end