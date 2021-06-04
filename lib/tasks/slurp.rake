
#  STEP 1 

# namespace :slurp do
#   desc "TODO"
#   task spot_price: :environment do

#         require "csv"

#         csv_text = File.read(Rails.root.join("lib", "csvs", "spot_price.csv"))
#         puts csv_text
#   end

# end



#  STEP 2 --------------------------------------------------------------------------------------


# namespace :slurp do
#   desc "TODO"
#   task spot_price: :environment do

#       require "csv"

#       csv_text = File.read(Rails.root.join("lib", "csvs", "spot_price.csv"))
#       csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
#       puts csv
#   end

# end

#  STEP 3-------------------------------------------------------------------------------------


# namespace :slurp do
#   desc "TODO"
#   task spot_price: :environment do

#       require "csv"

#       csv_text = File.read(Rails.root.join("lib", "csvs", "spot_price.csv"))
#       csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
#       csv.each do |row|
#         puts row.to_hash
#       end
#   end

# end


#  STEP 4-------------------------------------------------------------------------------------

namespace :slurp do
  desc "TODO"
  task spot_price: :environment do
        require "csv"

        csv_text = File.read(Rails.root.join("lib", "csvs", "spot_price.csv"))
        csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
        p csv.count
        csv.each do |row|
           t = SpotPrice.new
          
          # p row = csv[10]

            t.date = row["date"]
            t.wti = row["wti"]
            t.brent = row["brent"]
            t.nyh_conv = row["nyh_conv"]
            t.usgc_conv = row["usgc_conv"]
             t.rbob = row["rbob"]
           t.no_2_heating_oil = row["no_2_heating_oil"]
           t.nyh_usld = row["nyh_usld"]
           t.usgc_usld = row["usgc_usld"]
           t.la_usld = row["la_usld"]
           t.usgc_kero = row["usgc_kero"]
           t.mv_propane = row["mv_propane"]
           t.date = Date.strptime(row[csv.headers[0]],"%x")
          # p date2 = Date.strptime(row["date"],"%x")
          




            t.save
           puts "#{t.mv_propane}, #{t.wti}, #{t.brent}, #{t.nyh_conv}, #{t.usgc_conv}, #{t.rbob}, #{t.date} saved"
            # puts " #{t.resid}, #{t.date} saved"
         end

        # puts "There are now #{Throughput.count} rows in the spot_price table"
  end

end

#  COMPANIES
          # t = Company.new

          # t.name = row["name"]
          # t.state = row["state"]

          # t.save
          # puts "#{t.name}, #{t.state} saved"

# FACILITIES

          # t = Facility.new

          # t.throughput_id = row["throughput_ID"]
          # t.company_id = row["company_ID"]
          # t.padd_id = row["padd_id"]
          # t.state = row["state"]
          # t.city = row["city"]
          # t.zip = row["zip"]
          # t.site_type = row["site_type"]


          #  t.save
          # puts "#{t.throughput_id}, #{t.company_id}, #{t.padd_id}, #{t.state}, #{t.city}, #{t.zip}, #{t.site_type} saved"
     

# THROUGHPUTS

          # t = Throughput.new

          # t.facility_id = row["facility_id"]
          # t.product = row["product"]
          # t.year = row["year"]
          # t.supply_details = row["supply_details"]
          # t.quantity = row["quantity"]



          #   t.save
          # puts "#{t.facility_id}, #{t.product}, #{t.year}, #{t.supply_details}, #{t.quantity},  saved"