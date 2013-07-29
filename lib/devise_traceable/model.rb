require 'devise_traceable/hooks/traceable'

module Devise
  module Models
    # Trace information about your user sign in. It tracks the following columns:

    # * resource_id
    # * sign_in_at

    module Traceable
      def stamp!
        # quick and dirty fix
        # method modified to store user logins without sti details
        # assume thats device use only user and inherited classes
        'UserTracing'.constantize.create(:sign_in_at => Time.now, :user_id => self.id)
      end
    end
  end
end
