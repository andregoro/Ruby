$i=0
$num=5

names = Array.new(4, "mac")
puts "#{names}"

while $i < $num do
    puts("Inside the loop i=#$i")
    $i +=1
end

$i = 0
$num = 5
begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num


$i = 0
$num = 5

until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end

for i in 0..5
   puts "for loop #{i}"
end

(0..5).each do |i|

end
