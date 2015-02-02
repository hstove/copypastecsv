class Paste < ActiveRecord::Base
  validates_presence_of :title, :body, :uuid

  before_validation do
    self.uuid ||= SecureRandom.hex(4)
  end

  def csv
    CSV.parse(body)
  end

  def to_csv
    CSV.generate(body) { }
  end

  def xls
    body.gsub(",", "\t")
  end

  def to_param
    uuid
  end
end
