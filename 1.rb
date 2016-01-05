#フィボナッチ数列
def Fibonacci(x)
	ans=[]
	i=1
	j=1
	ans<< i
	ans<< j
	for k in 0..x do
		hoge=j
		j=i+j
		i=hoge
		ans=ans<<j
	end
	return ans
end
#n乗数の数列
def n_multiplier(x)
	ans=[]
	(1..x).each do |num|
		ans << num**num
	end
	return ans
end

#エラトステネスの篩
def check_prime(num)
	case num
	when 1 then
		false
	when 2 then
		true
	else
		(2..(num-1)).each do |index|
	   		if num %index ==0
				return false
			end
		end
	return true
	end
end

#素数の掛け算の数列
def Product_Prime(x)
	ans=[]
	p=2
	(3..x).each do |num|
		if check_prime(num) then
			ans << p*num
			p=num
		end
	end
	return ans
end
#円周率の数列
def Product_Pi(x)
	include Math
	ans=[]
	pi_s=(Math::PI.to_s).chomp.split("")
	(0..x).each do |num|
		if pi_s[num]!="." then
			ans<< 2*(pi_s[num].to_i)
		end
	end
	return ans
end

#数列クイズに正解なし
def question(x)
	ans=[]
	(0..x).each do |num|
		(0..num).each do |k|
			ans<< (2**(num-k))*(3**k)
		end
	end
	return ans
end
puts "数学ガール第1章"
puts "問題１　次の数は？"
num_list=Fibonacci(100)
puts num_list[0..3].join(",")
if gets().to_i==num_list[4]
	puts "true"
else
	puts "false"
end
puts "問題２　次の数は？"
num_list=n_multiplier(100)
puts num_list[0..3].join(",")
if gets().to_i==num_list[4]
	puts "true"
else
	puts "false"
end
puts "問題３　次の数は？"
num_list=Product_Prime(100)
puts num_list[0..3].join(",")
if gets().to_i==num_list[4]
	puts "true"
else
	puts "false"
end

puts "問題４　次の数は？"
num_list=Product_Pi(10)
puts num_list[0..5].join(",")
if gets().to_i==num_list[6]
	puts "true"
else
	puts "false"
end

puts "問題５　次の数は？"
num_list=question(5)
puts num_list[0..9].join(",")
if gets().to_i==num_list[10]
	puts "true"
else
	puts "false"
end
