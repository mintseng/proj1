# Q0: Why is this error being thrown?
This error is being thrown because we have not created the model for this yet.


# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Random pokemons are appearing when home_controller.rb gets a list of pokemon with no trainers, and randomly picks ones.

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It calls capture from a certain path.

# Question 3: What would you name your own Pokemon?
Ebola.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in ":root" in order to get back to the home page. I passed in ":back" to get back to the previous page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This will have a red box that appears saying that an error has occured.


# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
