$application_name = Rails.application.class.name.sub('::Application', '').split(/(?=[A-Z])/).join(' ')

# Global variable for development purposes.
$dev = nil