class User
  include Mongoid::Document
  include Mongoid::Timestamps
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  field :email, type: String
  field :encrypted_password, type: String
  field :reset_password_token, type: String
  field :reset_password_sent_at, type: DateTime
  field :remember_created_at, type: DateTime
  field :sign_in_count, type: Integer
  field :current_sign_in_at, type: DateTime
  field :last_sign_in_at, type: DateTime
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip, type: String
  field :created_at, type: DateTime
  field :updated_at, type: DateTime
end
