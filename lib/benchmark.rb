module RHMP

  class Benchmark
    
    def self.benchmark(iterations = 5)

      starttime = Time.now
      puts "Benchmark started at #{Time.now.to_s}."
      puts

      times_to_run = iterations * 5000
      puts "Running Benchmark #1 (Composing random strings) #{times_to_run} times..."
      times_to_run.times do
        srand
        a = String.new
        a << rand(99)
        a = "#{a}#{rand(99)}"
        a = nil
      end

      times_to_run = iterations * 2500
      puts "Running Benchmark #2 (Performing math calculations) #{times_to_run} times..."
      times_to_run.times do
        a = 100 * 40 / 30 * 12 / 9
        a += 1
        a += a
        a = a ^ 9 * rand(10)
        b = Math.sqrt(a)
        a = b + a
        b = Math.atan(b) + a
      end

      times_to_run = iterations * 2
      puts "Running Benchmark #3 (File read and array operations) #{times_to_run} times..."
      f = File.new("/usr/share/dict/words","r")
      a = f.readlines
      f.close
      times_to_run.times do
        a.reverse!
        a.sort!
        a.uniq!
      end

      times_to_run = iterations * 2
      puts "Running Benchmark #4 (File write operations) #{times_to_run} times..."
      times_to_run.times do
        f = File.new("tmpbenchmark.txt","w")
        a.each do |l|
          f.puts l
        end
      end
      f.close
      File.unlink("tmpbenchmark.txt")
  
      endtime = Time.now

      puts
      puts "Benchmarks ended at #{endtime}, taking #{endtime - starttime} seconds to run."
      puts

    end

  end

end
