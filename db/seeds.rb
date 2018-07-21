# Loads seed data out of default dir
Dir[File.join(__dir__, 'default', '*.rb')].each { |file| require file }

Rake::Task['db:load_dir'].reenable
Rake::Task['db:load_dir'].invoke(default_path)
