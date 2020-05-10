def nyc_pigeon_organizer(data)
  # write your code here!
	organized_data = {} # Used to store the names of the pigeons and assign values

	 # Iterates through top layer of Hash
	data.each do|color_gender_lives, attribute_hash|

		# Iterate through middle layer of hash
		attribute_hash.each do |attribute, name_array|

      name_array.each do |name|
				#if our new hash does not include the name, then we create the name as a key in the hash and make the value a hash ()

				if organized_data[name] == nil # If this statement returns true by being false
					organized_data[name] = {} # This creates a hash with a key of ["name"] and a value of an empty hash
				end

				if organized_data[name][color_gender_lives] == nil # Reserved for making the array if the attributes do not exist
					organized_data[name][color_gender_lives] = []
				end
        organized_data[name][color_gender_lives] << attribute.to_s
      end
		end
	end

	return organized_data
end
