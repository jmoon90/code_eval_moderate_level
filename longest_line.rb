class LongestLineOutputter
  def initialize
    @number_of_lines_output = 0
    @lines = {}
  end

  def sorted_lines
    @lines.sort {|k, v| v[1].to_i <=> k[1].to_i}
  end

  def run_line_calculator
    File.open(ARGV[0]).each_line do |line|
      if @number_of_lines_output == 0
        @number_of_lines_output = line.to_i
      else
        @lines[:"#{line}"] = line.size
      end
    end
  end

  def output_longest_lines(sorted_lines)
    sorted_lines.each do |k, v|
      puts k
    end
  end

  def system_execution
    run_line_calculator
    output_longest_lines(sorted_lines)
  end

end

l = LongestLineOutputter.new
l.system_execution
