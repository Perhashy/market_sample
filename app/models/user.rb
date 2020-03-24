class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, :last_name, :first_name, :last_name_kana, :first_name_kana, :birthday, presence: true

  has_many :addresses

  # validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]+\z/,
  #                              message: "には英小文字、英大文字、数字を全て含めてください。記号は使用できません。" },
  #                    if: -> { new_record? || changes['encrypted_password'] }, allow_blank: true
end
