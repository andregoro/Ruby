puts "ola"
lista=[0,1,2,3,4,5]
o=5
while o > 0 
    puts o
    o=o-1
end

for i in lista do
    print "#{i}"
end

v=0
until v == 10
    puts v
    v+=1
end

lista.each do |valor|
    puts "#{valor}"
end