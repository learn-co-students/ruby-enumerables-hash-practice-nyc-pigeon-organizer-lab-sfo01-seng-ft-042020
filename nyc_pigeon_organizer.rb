def nyc_pigeon_organizer(data)
  # create a new hash
  pigeon_list = {}
  
  # iterate over data-hash (most-outer hash)
  # attribute refers to :color, :gender, :lives (inner-hashes) keys
  # and values refers to properties inside each attribute-hash
  data.each do |attribute, values|
    # loop deeper over values
    # key2 refers to each key that points to an array (e.g.:purple)
    # and nemes refers to an array of strings/names that key2 points to
    values.each do |key2, names|
      # iterate over names-array and while each element inside = |name|
      names.each do |name|
        # check if name element already exist in pigeon_list hash
        # if not yet exist: assign that name element into the hash as a key
        # Hash makes sure there is no duplicate keys: same names will be assigned as one single key
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        # assign the attribute-key to name-hash and attribute-key points to an empty array
        if !pigeon_list[name][attribute]
          pigeon_list[name][attribute] = []
        end 
        # shove key2 into the empty array and convert from key-format to string-format
        pigeon_list[name][attribute] << key2.to_s
      end
    end
  end
  # return a new organized hash
  pigeon_list
end
