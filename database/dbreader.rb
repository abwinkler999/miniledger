require 'pry'

def read_in_entries
	db_file = File.open(NYNY.root.join("data/entries.txt"))
	raw_json = ""
	unless File.file?(db_file)
		return false
	end
	File.foreach(db_file) { |x| raw_json << x }
	@entries = JSON.parse(raw_json, symbolize_names:true)
	#binding.pry
	db_file.close
end