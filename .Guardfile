# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
#
guard 'shell' do

   watch /.*\.l?hs$/ do |m|
      puts "\n\nCompiling ..."
      `runghc #{m[0]} && echo "Compiled!"`
   end

   watch (%r{^.+\.(h|hpp|c|cpp)$}) do
      puts "\n\nMaking ..."
      `make`
   end

   watch /.*\.l?rb$/ do |m|
      puts "\n\nChecking ..."
      `ruby -c #{m[0]} && echo "Ok!"`
   end

end
