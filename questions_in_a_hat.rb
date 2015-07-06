require_relative 'lib/question_picker'
require_relative 'lib/assets/awk_turtle'
require_relative 'lib/assets/question_list'

wdi = Cohort.new(QUESTIONS)

QUESTIONS.count.times do
  p "#{wdi.random}"
  print ">> "
  input = gets.chomp
  if wdi.students.count == 0
    AwkwardTurtle.animate
  end
end
