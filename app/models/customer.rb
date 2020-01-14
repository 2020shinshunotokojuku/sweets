class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #has_many :cart_contents, dependent: :destroy
   validates :family_name, presence: true
   validates :first_name, presence: true
   validates :family_name_kana, presence: true
   validates :first_name_kana, presence: true
   validates :post_number, presence: true
   validates :address, presence: true
   validates :tel, presence: true

  def update_without_current_password(params, *options)
    params.delete(:current_password)

    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end
    result = update_attributes(params, *options)
    clean_up_passwords
    result

end


   has_many :shipping_addresses, dependent: :destroy
   has_many :histories, dependent: :destroy
   has_many :cart_contents, dependent: :destroy
end

