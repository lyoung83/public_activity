module PublicActivity
  module ORM
    module ActiveRecord
      # The Sequel model containing
      # details about recorded activity.
      class Activity < ::Sequel::Model
        include Renderable
        self.table_name = PublicActivity.config.table_name
          # Define polymorphic association to the parent
          many_to_one :trackable, :polymorphic => true
          # Define ownership to a resource responsible for this activity
          many_to_one :owner, :polymorphic => true
          # Define ownership to a resource targeted by this activity
          many_to_one :recipient, :polymorphic => true
          # Serialize parameters Hash
          serialize :parameters, Hash
      end
    end
  end
end
