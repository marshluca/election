class Category < ActiveRecord::Base
  has_many :feeds
  validates :name, :presence => true, :uniqueness => true
end

__END__
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| name       | varchar(255) | YES  |     | NULL    |                |
| desc       | varchar(255) | YES  |     | NULL    |                |
| icon_url   | varchar(255) | YES  |     | NULL    |                |
| count      | int(11)      | YES  |     | 0       |                |
| status     | int(11)      | YES  |     | 1       |                |
| created_at | datetime     | NO   |     | NULL    |                |
| updated_at | datetime     | NO   |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+