class Strain < ApplicationRecord
    has_many :assemblies
    has_many :wines, through: :assemblies

    validates :name, presence: true, uniqueness: { case_sensitive: true}
end
