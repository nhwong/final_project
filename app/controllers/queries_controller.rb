class QueriesController < ApplicationController
  def home
  end

  def retrieve
    @dish = Dish.where(:dish => params[:query])
    # @dish = Dish.first
    @query = Query.new

    if @dish.count == 0
      @dish = Dish.new
      @dish.dish = params[:query]
      # dish_save_status = @dish.save
      # if dish_save_status != true
      #   render("/queries", :notice => "Unsuccessful query")
      # end
      #
      # @query.dish_id = @dish.id
      # if query_save_status != true
      # query_save_status = @query.save
      #   render("/queries", :notice => "Unsuccessful query")
      # end
    end

    render("home")
  end

end
