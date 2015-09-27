class Officer < ActiveRecord::Base
  def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    Officer.create! row.to_hash
  end
end
end
