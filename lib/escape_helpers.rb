class String
  def sparql_escape
    '"' + self.gsub(/[\\"']/) { |s| '\\' + s } + '"'
  end
end

class Date
  def sparql_escape
    '"' + self.xmlschema + '"^^xsd:dateTime'
  end
end

class Integer
  def sparql_escape
    '"' + self.to_s + '"^^xsd:integer'
  end
end

class Float
  def sparql_escape
    '"' + self.to_s + '"^^xsd:float'
  end
end

class Boolean
  def sparql_escape
    self ? '"true"^^xsd:boolean' : '"false"^^xsd:boolean'
  end
end
