
# yes no questions


# "Do you need help."
# "Do you need assistance."
# "Do you need a moment."
# "Do you need a screw driver."

# "Do you need a screw driver."

# verbs = %w[have get go make know think take see come want look use find give tell work call try ask need feel become]
# verbs.each { |v| puts v }

start_yes_no = { "Does your" => %w[mom dad dog bird pet sister brother grandfather grandmother uncle aunt nice cousing nephew], "Do you" => [], 
    "Doesn't your" => %w[mom dad dog bird pet sister brother grandfather grandmother uncle aunt nice cousing nephew], "Don't you" => []     
}

predicates_yes_no = { "have" => ["patience", "a conscience", "a dog", "a history", "meat", "music", "a method", "a theory", "a television", "a fact", "evidence" ],
    "get" => ["to play often", "what that means", "confused", "scared", "friendly before dusk", "happy after winning", "interested in new topics"],
    "go"  => ["often to the movies", "sometimes to take walks", "visit family", "swimming", "play soccer"],
    "make" => ["cake", "dinne", "sense", "a mess", "breakfast"],
    "know" => ["about science", "about the incident", "how to cook", "what that is"],
    "think" => ["that is a good idea", "we should come along", "the world is goin to end", "your breath stinks", "your teeth are yellow", "the tree is too tall"]
}

start_question_word = {"What" => ["would", "is", "happens", "do", "does"], 
    "How" => ["do", "are", "does"], "Where" => ["do", "is", "are", "does"], 
    "When" => ["is", "are", "do", "does", "will", "would"], 
    "Who" => ["is", "are", "do", "does", "will", "would"]
 }

 predicates_question_word = { "Whatwould" => ["motivate you to stay", "be a nice gift", "make you happy", "compensate for my mistake"],
    "Whatis" => ["the meaning of life", "your name", "the answer to all the questions", "your favorite color"],
    "Whathappens" => ["if you mix salt and pepper", "if we come after dark", "if we don't tell anyone", "if I don't try"],
    "Whatdo" => ["real friends do for each other", "you like to drink", "you like to do in your free time", "feathers look like up close"],
    "Whatdoes" => [""],
    "Howdo" => [],
    "Howare" => [],
    "Howdoes" => [],
    "Wheredo" => [],
    "Whereis" => [],
    "Whereare" => [],
    "Wheredoes" => [],
    "Whenis" => [],
    "Whenare" => [],
    "Whendo" => [],
    "Whendoes" => [],
    "Whenwill" => [],
    "Whenwould" => [],
    "Whois" => [],
    "Whoare" => [],
    "Whodo" => [],
    "Whodoes" => [],
    "Whowill" => [],
    "Whowould" => []
}

verbs = %w[be have do say get make go know take see come think look want give use find tell ask work seem feel try leave call]





def yes_no_questions(starts, predicates, number_of_questions)
    puts "\n\n"
    puts "Complete the following yes / no questions."
    start_keys = starts.keys
    predicate_keys = predicates.keys

    (1..number_of_questions).to_a.each do |i|
        start = start_keys.shuffle.first
        start = starts[start].empty? ? start : "#{start} #{starts[start].shuffle.first}"
        verb = predicate_keys.shuffle.first
        predicate = predicates[verb].shuffle.first
        
        ran = (1..10).to_a.shuffle.first

        if ran > 5
            puts question_number(i) + start
        else
            puts question_number(i) + " "*20 + " #{verb} #{predicate}?"
        end

    end

    puts "\n\n"
end 

def question_word_questions(starts, predicates, number_of_questions)

    puts "\n\n"
    puts "Complete the following questions."
    question_words = starts.keys

    (1..number_of_questions).to_a.each do |i|

        question_word = question_words.shuffle.first
        puts question_number(i) + question_word + " " + starts[question_word].shuffle.first

    end

    # starts.each do |key, value|
    #     value.each do |v|
    #         puts key + v
    #     end
    # end

end

def adverbs(verbs, number_of_questions)
    puts "\n\n"
    puts "Write a sentence using the following words."

    adverbs = %w[never sometimes usually often always]
    pronouns = %w[I we you he she mom dad sister brother teacher president]

    (1..number_of_questions).to_a.each do |i|
        puts question_number(i) + pronouns.shuffle.first + " " + adverbs.shuffle.first + " " + verbs.shuffle.first + ": "
    end
    
end

def linking_words(verbs, number_of_questions)
    puts "\n\n"
    puts "Write two sentences, one with each verb. Then write them as one sentence using the linking verb."
    link_words = %w[because but]

    (1..number_of_questions).to_a.each do |i|
        puts question_number(i) + "verbs: " + verbs.shuffle.first + ", " + verbs.shuffle.first + " | linking word: " + link_words.shuffle.first + ": "
    end

end

def question_number(i)
    i.to_s + ". "
end

yes_no_questions(start_yes_no, predicates_yes_no, 10)
question_word_questions(start_question_word, predicates_question_word, 10)
adverbs(verbs, 10)
linking_words(verbs, 5)


