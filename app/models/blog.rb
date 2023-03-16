class Blog < ApplicationRecord
  has_paper_trail #paper_trailを使うと宣言
  has_many :versions
end