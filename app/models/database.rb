class Database < ActiveRecord::Base
  VALID_DBNAME = /\A[a-zA-Z0-9]/i

  validates :name,presence:true, length:{maximum: 15,minimum: 3}, uniqueness: {case_sensitive: false},
            format: { with: VALID_DBNAME }
end
