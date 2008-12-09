namespace :clear_empty_attributes do
  desc "clear all blank strings of the given MODELS"
  task :clear_all_blank_strings do
    raise "rake clear_empty_attributes:clear_all_blank_strings MODELS=User,Movie,... to clear blank strings of those models" unless ENV['MODELS']
    models = ENV['MODELS'].split(',').map(&:constantize)

    models.each do |model|
      puts "#{model}:"
      model.columns.select(&:text?).each do |column|
        name = column.name
        puts "  #{name}"
        model.update_all("#{name} = NULL","#{name} = ''")
      end
      puts ''
    end
  end
end