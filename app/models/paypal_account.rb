# == Schema Information
#
# Table name: paypal_accounts
#
#  id           :integer          not null, primary key
#  person_id    :string(255)
#  community_id :integer
#  email        :string(255)
#  payer_id     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class PaypalAccount < ActiveRecord::Base
  attr_accessible :email, :payer_id, :person_id, :community_id

  belongs_to :person
  belongs_to :community
  has_one :order_permission, :dependent => :destroy
  has_one :billing_agreement
end
