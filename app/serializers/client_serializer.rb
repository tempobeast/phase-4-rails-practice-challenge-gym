class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_memberships_cost

  # has_many :memberships

  def total_memberships_cost
   "#{self.object.memberships.sum {|m| m[:charge]}}"
  end

end
