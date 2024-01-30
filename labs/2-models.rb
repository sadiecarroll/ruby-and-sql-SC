# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
#initialize an empty salesperson row (aka hash)
salesperson = Salesperson.new

#assign values to each column
salesperson["first_name"] = "Sadie"
salesperson ["last_name"] = "Carroll"
salesperson ["email"] = "sadiekcarroll@gmail.com"
#save
salesperson.save
#repeat 

salesperson = Salesperson.new
salesperson["first_name"] = "Patrick"
salesperson ["last_name"] = "Carroll"
salesperson ["email"] = "patrickcarroll27@gmail.com"
salesperson.save

# 3. write code to display how many salespeople rows are in the database
puts "There are #{Salesperson.all.count} sales people"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
patrick = Salesperson.find_by({ "first_name" => "Patrick" })
patrick["email"] = "patrick@gmail.com"

# CHALLENGE:
# 5. write code to display each salesperson's full name
puts "Salespeople: #{Salesperson.all.count}"

salespeople = Salesperson.all
for person in salespeople
  
end


# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
