# == Schema Information
#
# Table name: roles
#
#  name          :string
#  resource_id   :integer
#  resource_type :string
#

class Role < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => :users_roles

  belongs_to :resource,:polymorphic => true

  validates :resource_type,
            :inclusion => { :in => Rolify.resource_types },
            :allow_nil => true

  scopify
end
# class Role < ActiveRecord::Base
#   has_and_belongs_to_many :users, :join_table => :lighten_users_roles
#   has_and_belongs_to_many :permissions, :join_table => :lighten_permissions_roles
#
#   belongs_to :resource, :polymorphic => true
#
#   validates :name, :uniqueness => true, :presence => true
#   validates :resource_type, :inclusion => {:in => ::Rolify.resource_types}, :allow_nil => true
#
#   scopify
#
#   def self.[](name)
#     where(:name => name.to_s).first_or_create!
#   end
#
#   def has_permission?(name)
#     raise ::ArgumentError, "Permission should be the name of the permission not a permission object." if name.is_a?(::Lighten::Permission)
#     permissions.any?{ |r| r.name == name.to_s}
#   end
#
#   def can_delete?(role_to_delete = self)
#     !role_to_delete.is_system
#   end
# end
