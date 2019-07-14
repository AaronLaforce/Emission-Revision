class User < ApplicationRecord
    has_many :cars, :dependent=>:destroy
    has_many :fuel_logs, :dependent => :destroy
    has_many :forum_posts , :dependent=> :destroy
    has_many :forum_replies, :dependent => :destroy
    # emails are saved in lowercase
    before_save { self.email = email.downcase }
    validates :name, presence: true,uniqueness: true
    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    # ensures that email exists, has the proper form of an email,
    # and is not the same as another in the database
    validates :email, presence: true, format: {with: email_regex},
                                    uniqueness: { case_sensitive: false}
    has_secure_password #password hash using bcrypt            
    validates :password, presence: true, length: { minimum: 6 }                   
end
