x = ARGV[0].to_i

class Eratos
  def self.prime(x)

    sqr = Math.sqrt(x)

    serch = Array.new #探索リスト
    prime = Array.new #素数リスト

    for num in 2..x do
      serch << num
    end

    while serch[0].to_f < sqr do
      start = serch.shift
      prime << start
      num = serch.size
      num -= 1

      for i in 0..num do
        if serch[i].to_i % start.to_i == 0
          serch.delete_at(i)
        end
      end
    end
    
    prime = prime + serch
    return prime
  end
end

result = Eratos.prime(x)
p result
