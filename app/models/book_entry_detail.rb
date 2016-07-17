class BookEntryDetail < ActiveRecord::Base
	has_many :books
	has_many :book_entries
end
