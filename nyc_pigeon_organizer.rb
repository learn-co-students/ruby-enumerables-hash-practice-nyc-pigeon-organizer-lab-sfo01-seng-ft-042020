def nyc_pigeon_organizer(data)

new_hash = {}
  data.each do | attributes, values |
    values.each do |value, array|
      array.each do |name|
        if new_hash [name] == nil
          new_hash[name] = {}
          new_hash[name][attributes] = []
         else
          new_hash[name][attributes] = []
         end
        end
       end
      end
     new_hash.each do |name, values|
     values.each do |value2, array|
     data.each do |attributes, values|
      values.each do |value, array|
        array.each do |element|
          if element == name && value2 == attributes
          
            new_hash[name][value2] << value.to_s
          end
         end
        end
       end
      end
     end
    end