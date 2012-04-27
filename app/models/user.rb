class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end

__END__
+------------------------+--------------+------+-----+---------+----------------+
| Field                  | Type         | Null | Key | Default | Extra          |
+------------------------+--------------+------+-----+---------+----------------+
| id                     | int(11)      | NO   | PRI | NULL    | auto_increment |
| email                  | varchar(255) | NO   | UNI |         |                |
| encrypted_password     | varchar(128) | NO   |     |         |                |
| reset_password_token   | varchar(255) | YES  | UNI | NULL    |                |
| reset_password_sent_at | datetime     | YES  |     | NULL    |                |
| remember_created_at    | datetime     | YES  |     | NULL    |                |
| sign_in_count          | int(11)      | YES  |     | 0       |                |
| current_sign_in_at     | datetime     | YES  |     | NULL    |                |
| last_sign_in_at        | datetime     | YES  |     | NULL    |                |
| current_sign_in_ip     | varchar(255) | YES  |     | NULL    |                |
| last_sign_in_ip        | varchar(255) | YES  |     | NULL    |                |
| created_at             | datetime     | NO   |     | NULL    |                |
| updated_at             | datetime     | NO   |     | NULL    |                |
+------------------------+--------------+------+-----+---------+----------------+