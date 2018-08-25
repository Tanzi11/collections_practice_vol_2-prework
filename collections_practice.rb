new_schools = {}

schools.map do |school, location|
  location.map do |k, v|
    unless new_schools.key?(v)
      new_schools[v] = [school]
    else
      new_schools[v] << school
    end
  end
end

puts new_schools