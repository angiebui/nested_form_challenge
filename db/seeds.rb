survey = Survey.create(name: "Sports")
question = Question.create(body: "What's your favorite football team?", survey_id: survey.id)
option = Option.create(body: "Niners", question_id: question.id)
option_two = Option.create(body: "NY Giants", question_id: question.id)
option_three = Option.create(body: "New England Patriots", question_id: question.id)
option_four = Option.create(body: "Miami Dolphins", question_id: question.id)

