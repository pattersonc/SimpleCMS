# == Schema Information
#
# Table name: messages
#
#  id         :integer         not null, primary key
#  message    :string(255)
#  status     :string(255)
#  ip         :string(255)
#  created_at :datetime
#  updated_at :datetime
#  from_email :string(255)
#  from_name  :string(255)
#

require 'spec_helper'

describe Message do
  pending "add some examples to (or delete) #{__FILE__}"
end
