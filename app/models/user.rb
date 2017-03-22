class User < ApplicationRecord
  validates :username, presence: { message: 'cannot be empty.' }, allow_blank: false
  validates :name, presence: { message: 'cannot be empty.'}, allow_blank: false
  validates :email, presence: { message: 'cannot be empty.' }, allow_blank: false
  validates_email_format_of :email, { message: 'invalid.' }
  validates :email, uniqueness: { message: 'has already been taken.' }
  validates :encrypted_password, presence: { message: "cannot be empty." }

  # Devise modules.
  devise :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :trackable,
    :validatable,
    :confirmable,
    :lockable,
    :timeoutable
    # :omniauthable

  def _sanitize
    super
    self.username = self.username.strip.downcase
    self.name.strip!
    self.email = self.email.strip.downcase

    self.password.strip!
    self.password = SHA3::Digest::SHA256.new().update(self.password).hexdigest
  end

end
