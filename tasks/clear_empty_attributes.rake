namespace :db do
  desc "Clear all blank strings in the database. Specify TABLES=table1,table2 to limit to specific tables."
  task :clear_empty_attributes => :environment do
    connection = ActiveRecord::Base.connection
    tables = ENV['TABLES'] ? ENV['TABLES'].split(/,/) : connection.tables
    tables.each do |table|
      puts "#{table}:"
      connection.columns(table).select(&:text?).each do |column|
        name = column.name
        puts "  #{name}"
        column_name = connection.quote_column_name(column.name)
        connection.update("UPDATE #{connection.quote_table_name(table)} SET #{column_name} = NULL WHERE #{column_name} = ''")
      end
    end
  end
end