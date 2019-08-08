class Application

  def call(env)
    resp = Rack::Response.new
    nums = [Kernel.rand(1..20), Kernel.rand(1..20), Kernel.rand(1..20)]
    nums.map { |num| resp.write "#{num}\n" }
    if nums.uniq.length == 1
      resp.write "You Win!"
    else
      resp.write "You Lose."
    end
    resp.finish
  end

end
