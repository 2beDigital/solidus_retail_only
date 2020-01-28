module SolidusRetailOnly
  module Generators
    class InstallGenerator < Rails::Generators::Base
      class_option :auto_run_migrations, :type => :boolean, :default => false
      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=solidus_retail_only'
      end

      def add_helper
        inject_into_file 'app/helpers/application_helper.rb', "include Spree::RetailOnlyHelper\n", :after => "module ApplicationHelper\n"
      end

      def run_migrations
        run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask 'Would you like to run the migrations now? [Y/n]')
        if run_migrations
          run 'bundle exec rake db:migrate'
        else
          puts 'Skipping rake db:migrate, don\'t forget to run it!'
        end
      end
    end
  end
end
