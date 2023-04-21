class UserResource < JSONAPI::Resource
    attributes :name, :email,:account_id
    has_one :message

end
