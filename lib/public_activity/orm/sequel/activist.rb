module PublicActivity
  module ORM
    module Sequel
      # Module extending classes that serve as owners
      module Activist

        def activist
          one_to_many :activities_as_owner,
            :class_name => "::PublicActivity::Activity",
            :as => :owner
          one_to_many :activities_as_recipient,
            :class_name => "::PublicActivity::Activity",
            :as => :recipient
        end
      end
    end
  end
end
