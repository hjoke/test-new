=begin
对ruby进行学习
基于ruby4.0版
#encoding:UTF-8
print "你好\n"
puts "first name #{ARGV[0]}"
puts "second name #{ARGV[1]}"

#文件操作
filename=ARGV[0]
file=File.open(filename)
text= file.read
puts text
file.close
text1=File.read(filename);
puts text1
#逐行
filename=ARGV[0]
file=File.open(filename)
file.each_line do |line|
puts line
end
=end
pattern =Regexp.new(ARGV[0])
filename=ARGV[1]
file=File.open(filename)
file.each_line do |line|
if pattern=~line
puts line
end
end