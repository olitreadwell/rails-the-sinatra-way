class PagesController < ApplicationController

    def index
        @grandma = params[:user_input]
        if params[:user_input].to_s.length == 0
            # redirect to '/'
      else
            if @grandma =~ /LEAVING|GOODBYE/
                @grandma_says = "LOVE YOU, HONEY!"
                # redirect to "/grandma_says/#{@grandma_says}"
            elsif @grandma == @grandma.upcase
                @grandma_says = "NOT SINCE 1933, HONEY!"
                # redirect to "/grandma_says/#{@grandma_says}"
            else
                @grandma_says = "YOU'LL HAVE TO SPEAK UP KIDDO!"
                # redirect to "/grandma_says/#{@grandma_says}"
            end
        end
    end

    # def grandma
    #     puts params[:user_input]
    #     @grandma = params[:user_input]
    # end

end