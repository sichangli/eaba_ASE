class RestaurantToClientReviewsController < ApplicationController
  # GET /restaurant_to_client_reviews
  # GET /restaurant_to_client_reviews.json
  def index
    @restaurant_to_client_reviews = RestaurantToClientReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant_to_client_reviews }
    end
  end

  # GET /restaurant_to_client_reviews/1
  # GET /restaurant_to_client_reviews/1.json
  def show
    @restaurant_to_client_review = RestaurantToClientReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant_to_client_review }
    end
  end

  # GET /restaurant_to_client_reviews/new
  # GET /restaurant_to_client_reviews/new.json
  def new
    @restaurant_to_client_review = RestaurantToClientReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant_to_client_review }
    end
  end

  # GET /restaurant_to_client_reviews/1/edit
  def edit
    @restaurant_to_client_review = RestaurantToClientReview.find(params[:id])
  end

  # POST /restaurant_to_client_reviews
  # POST /restaurant_to_client_reviews.json
  def create
    @restaurant_to_client_review = RestaurantToClientReview.new(params[:restaurant_to_client_review])

    respond_to do |format|
      if @restaurant_to_client_review.save
        format.html { redirect_to @restaurant_to_client_review, notice: 'Restaurant to client review was successfully created.' }
        format.json { render json: @restaurant_to_client_review, status: :created, location: @restaurant_to_client_review }
      else
        format.html { render action: "new" }
        format.json { render json: @restaurant_to_client_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /restaurant_to_client_reviews/1
  # PUT /restaurant_to_client_reviews/1.json
  def update
    @restaurant_to_client_review = RestaurantToClientReview.find(params[:id])

    respond_to do |format|
      if @restaurant_to_client_review.update_attributes(params[:restaurant_to_client_review])
        format.html { redirect_to @restaurant_to_client_review, notice: 'Restaurant to client review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant_to_client_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_to_client_reviews/1
  # DELETE /restaurant_to_client_reviews/1.json
  def destroy
    @restaurant_to_client_review = RestaurantToClientReview.find(params[:id])
    @restaurant_to_client_review.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_to_client_reviews_url }
      format.json { head :no_content }
    end
  end
end
