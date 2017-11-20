class QuestionsControllerController < ApplicationController
  def answer

  end

  def home

  end

  def ask
    @category = params[:question_type]
    if @category == @category.downcase
      @ask = coach_answer(@category)
    else
      @ask = coach_answer_enhanced(@category)
    end
  end


  def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message == "I am going to work right now!"
    return ""
  elsif your_message[your_message.size - 1] != '?'
    return "I don't care, get dressed and go to work!"
  else
    return "Silly question, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  elsif your_message[your_message.size - 1] != '?'
    return "I can feel your motivation! I don't care, get dressed and go to work!"
  else
    return "I can feel your motivation! Silly question, get dressed and go to work!"
  end
end

end
