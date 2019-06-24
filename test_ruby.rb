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

def cles2fashr(ctemp)
	cfahr=ctemp*9/5+32
end
100.times do |i|
	#puts cles2fashr(i)
end
for i in 1..10 do
 puts Random.rand(7)
end
a.collect do |item|
if item%3===0
b.push item
end
end

a.collect! do |item|
2*item
end
b=[]


a=1..100
a=a.to_a
#puts b.size
#a.reject! do |item|
#   (item%3)==0
#end
#a.reverse!
#puts a
sum=0
a.each do |i|
sum+=i
end
puts sum
result=Array.new(10)
10.times do |i|
#puts i
result[i] = a[10*i..(10*i+9)]
end
#puts a[10,11]
puts result[0][3]


def sum_array
nums1=[1,2,3]
nums2=[4,6,8]
c=Array.new
nums1.zip(nums2) do |a,b|
 c<<a+b
 end
 end
puts sum_array
=end

str="I believe that I will be a successful man"
a=str.split(/ /);

a.sort! do |a,b| 
a=a.downcase 
b=b.downcase 
a<=>b
end
a=0;
h=Hash.new(0)
str.each_char do |a|
h[a]+=1
end
h.each do |a,b|
#
printf "\'#{a}\':"
b.times { print "*"}
puts
end


