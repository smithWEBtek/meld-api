class Message < ApplicationRecord
  belongs_to :chat
  has_one :user
end
