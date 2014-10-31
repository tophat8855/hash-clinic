def doctors_first_names(big_data_hash)
  big_data_hash[:doctors].map do |doc|
    doc[:first_name]
  end
end

def doctors_last_names(big_data_hash)
  big_data_hash[:doctors].map do |doc|
    doc[:last_name]
  end
end

def doctors_ids(big_data_hash)
  big_data_hash[:doctors].map do |doc|
    doc[:id]
  end
end

def clinic_names(big_data_hash)
  array = []
  big_data_hash[:clinics].each_value do |clinic|
    array << clinic[:name]
  end
  array
end

def clinic_ids(big_data_hash)
  array = []
  big_data_hash[:clinics].each_key do |clinic|
    array << clinic
  end
  array
end

def doctors_at_a_clinic(big_data_hash, id)
  array = []
  big_data_hash[:clinics][id][:doctors].each do |docID|
    big_data_hash[:doctors].each do |docdata|
      if docdata[:id] == docID
        array << docdata
      end
    end
  end
  array
end

def clinics_for_doctor(big_data_hash, id)
  array = []
  big_data_hash[:clinics].each_value do |clinic|
    if clinic[:doctors].include?(id)
      array << clinic
    end
  end
  array
end

def clinic_names_for_doctor(big_data_hash, id)
  array = []
  big_data_hash[:clinics].each_value do |clinic|
    if clinic[:doctors].include?(id)
      array << clinic[:name]
    end
  end
  array
end

def doctorn_clinic_ids(big_data_hash, id)
  array = []
  big_data_hash[:clinics].each_value do |clinic|
    if clinic[:doctors].include?(id)
      array << big_data_hash[:clinics].key(clinic)
    end
  end
  array
end
