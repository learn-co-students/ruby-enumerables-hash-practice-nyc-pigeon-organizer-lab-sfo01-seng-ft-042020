def nyc_pigeon_organizer(data)
  new_data = {}

  data.each do |physicals, characteristics|
    characteristics.each do |char, namesarr|
      namesarr.each do |name|
        new_data[name] = {:color =>[], :gender =>[], :lives=>[]}
      end
    end
  end
  data[:color].each do |char, namesarr|
    namesarr.each do |name|
      if data[:color][char].include?(name)
        new_data[name][:color].push(char.to_s)
      end
    end
  end
  data[:gender].each do |char, namesarr|
    namesarr.each do |name|
      if data[:gender][char].include?(name)
        new_data[name][:gender].push(char.to_s)
      end
    end
  end
  data[:lives].each do |char, namesarr|
    namesarr.each do |name|
      if data[:lives][char].include?(name)
        new_data[name][:lives].push(char)
      end
    end
  end
  return new_data
end