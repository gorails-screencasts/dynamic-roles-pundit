class Role < ApplicationRecord
  store_attribute :permissions, :create_posts, :boolean, default: false
  store_attribute :permissions, :read_posts, :boolean, default: false
  store_attribute :permissions, :update_posts, :boolean, default: false
  store_attribute :permissions, :delete_posts, :boolean, default: false
end
