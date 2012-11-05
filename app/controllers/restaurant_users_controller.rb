class RestaurantUsersController < ApplicationController
  # GET /restaurant_users
  # GET /restaurant_users.json
  def index
    @restaurant_users = RestaurantUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant_users }
    end
  end

  # GET /restaurant_users/1
  # GET /restaurant_users/1.json
  def show
    @restaurant_user = RestaurantUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant_user }
    end
  end

  # GET /restaurant_users/new
  # GET /restaurant_users/new.json
  def new
    @restaurant_user = RestaurantUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant_user }
    end
  end

  # GET /restaurant_users/1/edit
  def edit
    @restaurant_user = RestaurantUser.find(params[:id])
  end

  # POST /restaurant_users
  # POST /restaurant_users.json
  def create
    @restaurant_user = RestaurantUser.new(params[:restaurant_user])

    respond_to do |format|
      if @restaurant_user.save
        format.html { redirect_to @restaurant_user, notice: 'Restaurant user was successfully created.' }
        format.json { render json: @restaurant_user, status: :created, location: @restaurant_user }
      else
        format.html { render action: "new" }
        format.json { render json: @restaurant_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /restaurant_users/1
  # PUT /restaurant_users/1.json
  def update
    @restaurant_user = RestaurantUser.find(params[:id])

    respond_to do |format|
      if @restaurant_user.update_attributes(params[:restaurant_user])
        format.html { redirect_to @restaurant_user, notice: 'Restaurant user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_users/1
  # DELETE /restaurant_users/1.json
  def destroy
    @restaurant_user = RestaurantUser.find(params[:id])
    @restaurant_user.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_users_url }
      format.json { head :no_content }
    end
  end
end
