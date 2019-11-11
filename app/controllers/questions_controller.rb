class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_question = params[:question]

    # coach response logic
    if @user_question == "I am going to work"
      @coach_response = "Great!"
    elsif @user_question[-1] == '?'
      @coach_response = "Silly question, I don't care get dressed and go to work!"
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end



    # I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise she/he will answer I don't care, get dressed and go to work!
  end
end
