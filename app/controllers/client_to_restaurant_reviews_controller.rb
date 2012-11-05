class ClientToRestaurantReviewsController < ApplicationController
  # GET /client_to_restaurant_reviews
  # GET /client_to_restaurant_reviews.json
  def index
    @client_to_restaurant_reviews = ClientToRestaurantReview.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @client_to_restaurant_reviews }
    end
  end

  # GET /client_to_restaurant_reviews/1
  # GET /client_to_restaurant_reviews/1.json
  def show
    @client_to_restaurant_review = ClientToRestaurantReview.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client_to_restaurant_review }
    end
  end

  # GET /client_to_restaurant_reviews/new
  # GET /client_to_restaurant_reviews/new.json
  def new
    @client_to_restaurant_review = ClientToRestaurantReview.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client_to_restaurant_review }
    end
  end

  # GET /client_to_restaurant_reviews/1/edit
  def edit
    @client_to_restaurant_review = ClientToRestaurantReview.find(params[:id])
  end

  # POST /client_to_restaurant_reviews
  # POST /client_to_restaurant_reviews.json
  def create
    @client_to_restaurant_review = ClientToRestaurantReview.new(params[:client_to_restaurant_review])

    respond_to do |format|
      if @client_to_restaurant_review.save
        format.html { redirect_to @client_to_restaurant_review, notice: 'Client to restaurant review was successfully created.' }
        format.json { render json: @client_to_restaurant_review, status: :created, location: @client_to_restaurant_review }
      else
        format.html { render action: "new" }
        format.json { render json: @client_to_restaurant_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /client_to_restaurant_reviews/1
  # PUT /client_to_restaurant_reviews/1.json
  def update
    @client_to_restaurant_review = ClientToRestaurantReview.find(params[:id])

    respond_to do |format|
      if @client_to_restaurant_review.update_attributes(params[:client_to_restaurant_review])
        format.html { redirect_to @client_to_restaurant_review, notice: 'Client to restaurant review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @client_to_restaurant_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_to_restaurant_reviews/1
  # DELETE /client_to_restaurant_reviews/1.json
  def destroy
    @client_to_restaurant_review = ClientToRestaurantReview.find(params[:id])
    @client_to_restaurant_review.destroy

    respond_to do |format|
      format.html { redirect_to client_to_restaurant_reviews_url }
      format.json { head :no_content }
    end
  end
end
