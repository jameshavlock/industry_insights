
#  STEP 1 

# namespace :slurp do
#   desc "TODO"
#   task stocks: :environment do

#         require "csv"

#         csv_text = File.read(Rails.root.join("lib", "csvs", "stocks.csv"))
#         puts csv_text
#   end

# end



#  STEP 2 --------------------------------------------------------------------------------------


# namespace :slurp do
#   desc "TODO"
#   task stocks: :environment do

#       require "csv"

#       csv_text = File.read(Rails.root.join("lib", "csvs", "stocks.csv"))
#       csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
#       puts csv
#   end

# end

#  STEP 3-------------------------------------------------------------------------------------


# namespace :slurp do
#   desc "TODO"
#   task stocks: :environment do

#       require "csv"

#       csv_text = File.read(Rails.root.join("lib", "csvs", "stocks.csv"))
#       csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
#       csv.each do |row|
#         puts row.to_hash
#       end
#   end

# end


#  STEP 4-------------------------------------------------------------------------------------

namespace :slurp do
  desc "TODO"
  task stocks: :environment do
        require "csv"

        csv_text = File.read(Rails.root.join("lib", "csvs", "stocks.csv"))
        csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
        p csv.count
        csv.each do |row|
           t = Stock.new
          

          #  t.all_products = row["all_products"]
          #  t.crude = row["crude"]
          #  t.total_gasoline = row["total_gasoline"]
          #  t.kero = row["kero"]
          #  t.diesel = row["diesel"]
          #  t.resid = row["resid"]
           p date = Date.strptime(row[csv.headers[7]],%x)
          # p date = row[csv.headers.first]




            # t.save
           puts "#{t.all_products}, #{t.crude}, #{t.total_gasoline}, #{t.kero}, #{t.diesel}, #{t.resid}, #{t.date} saved"
         end

        # puts "There are now #{Throughput.count} rows in the stocks table"
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