# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ChoiceLinks::Application.initialize!


# Date format
Time::DATE_FORMATS[:saved_on] = "%a, %B %e, %Y"
