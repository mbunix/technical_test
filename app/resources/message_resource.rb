class MessageResource < JSONAPI::Resource
    attributes :name, :account_id,:message
    has_many :User
end
