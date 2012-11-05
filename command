rails generate scaffold Restaurant camis:integer dba:string boro:integer building:integer street:string zipcode:string phone:string cuisinecode:integer inspdate:string action:string violcode:integer score:integer currentgrade:string gradedate:string recorddate:string

rails generate scaffold ClientToRestaurantReview client_id:integer restaurant_id:integer review:text score:integer 

rails generate scaffold RestaurantToClientReview client_id:integer restaurant_id:integer review:text score:integer 

rails generate scaffold Order client_id:integer restaurant_id:integer content:text zipcode:string address:string phone:string 

rails generate scaffold Administrator account_name:string name:string password:string

rails generate scaffold RestaurantUser account_name:string name:string password:string license:string phone:string restaurant_id:integer