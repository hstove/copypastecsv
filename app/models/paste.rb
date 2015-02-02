class Paste < ActiveRecord::Base
  validates_presence_of :title, :body

  def csv
    CSV.generate(body) { }
  end

  def xls
    body.gsub(",", "\t")
  end
end
