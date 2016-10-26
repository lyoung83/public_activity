module PublicActivity
  module ORM
    # Support for Sequel for PublicActivity.
    module Sequel
      # Provides Sequel specific, database-related routines for use by
      # PublicActivity.
      class Adapter
        # Creates the activity on `trackable` with `options`
        def self.create_activity(trackable, options)
          trackable.activities.create options
        end
      end
    end
  end
end
