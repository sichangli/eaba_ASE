rails generate scaffold Restaurant camis:int dba:string boro:int building:int street:string zipcode:string phone:string cuisinecode:int inspdate:string action:string violcode:int score:int currentgrade:string gradedate:string recorddate:string

rails generate scaffold ClientToRestaurantReview client_id:int restaurant_id:int review:text score:int 

rails generate scaffold RestaurantToClientReview client_id:int restaurant_id:int review:text score:int 

rails generate scaffold Order client_id:int restaurant_id:int content:text zipcode:string address:string phone:string 

rails generate scaffold Administrator account_name:string name:string password:string