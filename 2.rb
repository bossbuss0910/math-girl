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

#素数のリスト
def Prime_list(x)
	ans=[]
	ans << 2
	(3..x).each do |num|
		if check_prime(num) then
			ans << num
		end
	end
	return ans
end
#約数の数
def Divisor_num(num)
	p_list=Prime_list(num)
	ans=1
	for p in p_list do
		count=0
		while num%p==0 do
			num=num/p
			count+=1
		end
		count+=1
		ans*=count
	end
	return ans
end
#約数の総和
def Divisor_sum(num)
	p_list=Prime_list(num)
	ans=1
	for p in p_list do
		count=0
		while num%p==0 do
			num=num/p
			count+=1
		end
		count+=1
		ans*=(1-p**count)/(1-p)
	end
	return ans
end
puts "数学ガール２章"
puts "数を入力してください(自然数)"
n=gets().to_i
print n
puts "の約数の個数は？"
ans=gets().to_i
if Divisor_num(n)==ans
	puts "true"
else
	puts "false"
	puts Divisor_num(n)
end
print n
puts "の約数の総和は？"
ans=gets().to_i
if Divisor_sum(n)==ans
	puts "true"
else
	puts "false"
	puts Divisor_sum(n)
end

