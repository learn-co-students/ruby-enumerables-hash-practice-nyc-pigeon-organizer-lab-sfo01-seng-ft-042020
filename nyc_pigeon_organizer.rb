def nyc_pigeon_organizer(data)
new = {}
males = data[:gender][:male]
females = data[:gender][:female]
names = males + females
names.map {|name| new[name] = {}
}
pigeon_color = data[:color]
pigeon_color.map {|color_pair|
  color = color_pair[0]
data[:color][color].map {|name|
  p new[name][:color]
  if new[name][:color].nil?
new[name][:color] = [color.to_s]
else new[name][:color] += [color.to_s]
end
}
}
pigeon_gender = data[:gender]
pigeon_gender.map {|gender_pair|
gender = gender_pair[0]
data[:gender][gender].map {|name|
new[name][:gender] = [gender.to_s]
}
}
pigeon_location = data[:lives]
pigeon_location.map {|location_pair|
  location = location_pair[0]
  data[:lives][location].map {|name|
  new[name][:lives] = [location]
}
}
p new
new
end