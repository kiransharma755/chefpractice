ruby_block "Install package" do
block do
   result=`rpm -qa | grep -i zlib-devel;echo $?`
   puts " command status is #{result}"
   if ("#{result}".to_i != 0) then
     puts "Installing zlib devel"
      `yum install zlib-devel`
    else
      puts "package is already installed"
   end
 end
end
