class ContactSerializer < ActiveModel::Serializer
  attributes :id, :family_name, :given_names, :company, :title, :phone, :email, :website, :address, :company_id, :additional_info
  has_one :company
  has_many :projects
end
