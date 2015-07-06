require_relative 'lib/question_picker'
require_relative 'lib/assets/awk_turtle'
require_relative 'lib/assets/question_list'

wdi14 = Cohort.new(QUESTIONS)

QUESTIONS.count.times do
  p "#{wdi14.random}"
  print ">> "
  input = gets.chomp
  if wdi14.students.count == 0
    AwkwardTurtle.animate
  end
end