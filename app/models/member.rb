class Member
  attr_reader :name, :house, :patronus, :role
  def initialize(member_info)
    @name = member_info[:name]
    @house = member_info[:house]
    @patronus = member_info[:patronus]
    @role = member_info[:role] || nil
  end
end
