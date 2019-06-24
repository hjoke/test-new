=begin
对ruby进行学习
基于ruby4.0版
# -*- coding: UTF-8 -*-
#encoding:UTF-8
print "你好\n"
puts "first name #{ARGV[0]}"
puts "second name #{ARGV[1]}"
#irb --simple-prompt
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

pattern =Regexp.new(ARGV[0])
filename=ARGV[1]
file=File.open(filename)
file.each_line do |line|
if pattern=~line
puts line
end
end
#

array=[0,1,2,3,4,5,6,9,10]
array.each do |i|
case i
when 1,3,5 #then
puts "#{i}是奇数"
when 2,4,6
puts "#{i}是偶数"
else 
puts "#{i}未出现"
end
end

#类
class Helloword
def initialize(myname="ruby")
	@name=myname
end
attr_accessor :name
def hello
	name="you"
	puts "hello world ,#{self.name}"
end
def self.test
puts "hello #{self.name}"
end
end
ruby=Helloword.new
Helloword.test
#puts ruby.name
ruby.name="tom"
#ruby.hello
def Helloword.sayhello(name)
	puts "hello #{name}"
end
Helloword.sayhello("Tom")

#继承
class Test
def test
puts "testmye s"
end
end
class Test1<Test
def test
puts "test2"
end
end
mytest=Test1.new
mytest.test

#网络
require "net/http"
require "uri"
url=URI.parse("http://www.ruby-lang.org/ja/")#url是uri的一种
http=Net::HTTP.start(url.host,url.port)
doc =http.get(url.path)
puts doc
=end
def cles2fashr(ctemp)
	cfahr=ctemp*9/5+32
end
100.times do |i|
	#puts cles2fashr(i)
end
for i in 1..10 do
 puts Random.rand(7)
end
