def nyc_pigeon_organizer(data)
  result = {}
  data.each do |color_gender_lives,inner_v|
    inner_v.each do |inner_k, array_v|
      array_v.each do |name|
        if result[name] == nil
          result[name] = {}
          result[name][color_gender_lives] = []
        else
          result[name][color_gender_lives] = []
        end 
      end
    end
  end
  result.each do |name, values|
    values.each do |new_k, new_array|
      data.each do |color_gender_lives, inner_v|
        inner_v.each do |inner_k, array_v|
          array_v.each do |item|
            if item == name && new_k == color_gender_lives
              result[name][new_k] << inner_k.to_s
            end
          end
        end 
      end
    end
  end
  result
end
