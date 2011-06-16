# coding: utf-8
require 'digest/sha1'

class User < ActiveRecord::Base
  include Authentication
  include Authentication::ByPassword
  include Authentication::ByCookieToken

  set_table_name 'users'

  validates :login, :presence   => true,
                    :uniqueness => true,
                    :length     => { :within => 3..40 },
                    :format     => { :with => Authentication.login_regex, :message => "Логин должен быть от 3 до 40 символов" }

  validates :name,  :format     => { :with => Authentication.name_regex, :message => "" },
                    :length     => { :maximum => 100 },
                    :allow_nil  => true
  

  #validates :email, :presence   => true,
  #                  :uniqueness => true,
  #                  :format     => { :with => Authentication.email_regex, :message => Authentication.bad_email_message },
  #                 :length     => { :within => 6..100 }

  easy_roles :roles
  has_many :testsessions,:dependent => :destroy
  belongs_to :education
  belongs_to :sphere
  belongs_to :sertype
  belongs_to :serlevel

  # HACK HACK HACK -- how to do attr_accessible from here?
  # prevents a user from submitting a crafted form that bypasses activation
  # anything else you want your user to change should be added here.
  attr_accessible :login, :email, :name, :password, :password_confirmation,:F,:I,:O,:Birth,:Sex,:workplace,:proff,:sertype_id,:sphere_id,:education_id,:serlevel_id
  validates_presence_of :I, :message=>"Не введено имя"
  validates_presence_of :F, :message=>"Не введена фамилия"
  validates_presence_of :O, :message=>"Не введено отчество"




  # Authenticates a user by their login name and unencrypted password.  Returns the user or nil.
  #
  # uff.  this is really an authorization, not authentication routine.  
  # We really need a Dispatch Chain here or something.
  # This will also let us return a human error message.
  #
  def self.authenticate(login, password)
    return nil if login.blank? || password.blank?
    u = find_by_login(login.downcase) # need to get the salt
    u && u.authenticated?(password) ? u : nil
  end

  def login=(value)
    write_attribute :login, (value ? value.downcase : nil)
  end

  def email=(value)
    write_attribute :email, (value ? value.downcase : nil)
  end

  protected
    


end
