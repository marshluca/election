# encoding: utf-8
class Feed < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  validates_presence_of :title, :content

  default_scope order('created_at desc')
  scope :category, lambda { |cid| where(:category_id => cid) }

  STATUS = {
    0 => '未审核',
    1 => '已审核',
    2 => '审核中'
  }
end

__END__
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| id          | int(11)      | NO   | PRI | NULL    | auto_increment |
| title       | varchar(255) | YES  |     | NULL    |                |
| author_id   | int(11)      | YES  | MUL | NULL    |                |
| category_id | int(11)      | YES  | MUL | NULL    |                |
| content     | text         | YES  |     | NULL    |                |
| image_url   | varchar(255) | YES  |     | NULL    |                |
| origin_url  | varchar(255) | YES  |     | NULL    |                |
| source      | varchar(255) | YES  |     | NULL    |                |
| status      | int(11)      | YES  |     | 1       |                |
| vote_count  | int(11)      | YES  |     | 0       |                |
| created_at  | datetime     | NO   |     | NULL    |                |
| updated_at  | datetime     | NO   |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+