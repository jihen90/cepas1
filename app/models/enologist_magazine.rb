class EnologistMagazine < ApplicationRecord
  belongs_to :enologist
  belongs_to :magazine
  enum role: { editor: 0, writter: 1, reviewer: 3 }
end
