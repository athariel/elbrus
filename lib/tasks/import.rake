namespace :import do

  desc "Import products from csv file"
  task :products, [:file_path] => [:environment]  do |t, args|
    require 'csv'
    unless args[:file_path].present?
      abort "Missing argument: file_path\nRun task again like this: rake import:products file_path"
    end
    unless File.exists?(Rails.root.join(args[:file_path]))
      abort "File #{Rails.root.join(args[:file_path])} does not exist"
    end
    CSV.foreach(Rails.root.join(args[:file_path]), headers: true) do |row|
      Product.where(name: row["name"]).first_or_create do |p|
        p.calories = row["calories"]
        p.fat = row["fat"],
        p.carbohydrate = row["carbohydrates"],
        p.protein = row["protein"]
      end
    end
  end
end