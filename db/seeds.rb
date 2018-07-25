# Loads seed data out of default dir
#Dir[File.join(__dir__, 'default', '*.rb')].each { |file| require file }
default_path = File.join(File.dirname(__FILE__), 'default')
Rake::Task['db:load_dir'].reenable
Rake::Task['db:load_dir'].invoke(default_path)
