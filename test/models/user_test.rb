# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  name          :string
#  gender        :string
#  date_of_birth :datetime
#  email         :string
#  password      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  contact_no    :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
