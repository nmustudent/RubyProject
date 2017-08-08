

class Detection
  puts "enter the file name"
  $fname=gets.chomp
  $ext=File.extname($fname)
  $bytes=File.open($fname,'r+')

  def extension
    case $ext
    when '.cpp'
      puts "this is cpp file"
      $c=class_detect
      if ($c >=1)
        puts "total no of valid classes#{$c}"
      end
      v=validBrackets
      if v==false
        puts "parenthesis error"

      end
      detect_method


    when '.rb'
      puts "this is ruby file"
    when '.c'
      puts "this is c file"
    when '.java'
      puts "this is java file"
    end
  end



  def class_detect
    line_no=0
    class_no=0
    case $ext
    when '.cpp'
      $bytes.each_line{|line|
        line_no+=1
        line.strip!
        if line=~/^((public|protected|private)\s)?(class){1}\s[a-zA-Z_][a-zA-Z0-9_]+(\:((public|private)\s)?[a-zA-Z_][a-zA-Z0-9_]+(\,((public|private)\s)?[a-zA-Z_][a-zA-Z0-9_]+))?$/ then
          puts "valid class name at line no #{line_no}"
          class_no+=1
        else
          if line=~/^((public|protected|private)\s)?(class)/
           puts "Invalid class name at line no #{line_no}"
         end
       end

     }
     return class_no

    end
  end


  def validBrackets

    $bytes.seek(1, IO::SEEK_SET)
   line_count=0

   stack = []
   $bytes.each_char { |chr|
      if chr=="\n"
      line_count+=1
    end
      case chr

      when '{', '[', '('
      stack.push(chr)
      when '}'
      x = stack.pop
      return false if x != '{'
      when ']'
      x = stack.pop
      return false if x != '['
      when ')'
      x = stack.pop
      return false if x != '('
      end
  }
  b=stack.empty?
  if(b==false)
    puts "error at line no#{line_count}"
  else
    puts "no parenthesis error....."
  end
end

def detect_method
    l_no=0
    method_no=0
  $bytes.seek(1, IO::SEEK_SET)
  case $ext
  when '.cpp'
    $bytes.each_line{|line|
      l_no+=1
      line.strip!

  if(line=~/^(int|float|char|double|void)\s[a-zA-Z_][a-zA-Z0-9_]*\(((int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?(\,(int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?)*)?(\)(\;?|\n|\s*\{))$/)
    puts "valid method at line no#{l_no}"
    method_no +=1
    else

      if line=~/^(int|float|char|double|void)\s[a-zA-Z_][a-zA-Z0-9_]*\(/ || line= ~/^.[a-zA-Z_][a-zA-Z0-9_]*\(((int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?(\,(int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?)*)?(\)(\;|\n|\s*\{))$/ ||
        line=~/^(int|float|char|double|void)\s.*((int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?(\,(int|float|char|double)(\s[a-zA-Z_][a-zA-Z0-9_]*)?)*)?(\)(\;|\n|\s*\{))$/
        puts "Invalid method declaration at line no #{l_no}"
      end
    end
  }
  puts "total no of valid methods are#{method_no}"
  end
end
end




d=Detection.new
d.extension
