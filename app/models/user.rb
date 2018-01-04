class User < ActiveRecord::Base
  before_save { self.email = email.downcase if email.present? }
  before_save :name_split

  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }
  has_secure_password

  private
    def name_split
      split_name = name.to_s.split(' ')
      split_name.each do |names|
        names.capitalize!
      end
      self.name = split_name.join(" ")
    end
end
