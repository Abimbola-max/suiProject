
/// Module: wwtbas
module wwtbas::wwtbas {
    // use sui::object

    use sui::transfer::public_transfer;
    // use sui::test_scenario::sender;
    use std::{debug, string, string::String};
    use std:: vector;
    
    public struct Quiz has key, store {
        id: UID,
        questions: vector<String>,
    }

   public fun new_quiz(ctx: &mut TxContext){
        let quiz= Quiz{
            id:object::new(ctx),
            questions: vector[]

        };
        debug::print(&quiz);
        transfer::public_transfer(quiz, ctx.sender());
        
   }

    public fun add_question(quiz: &mut Quiz, question: string::String) {
        let questions = &mut quiz.questions;
        questions.push_back(question);
        debug ::print(questions);
      
   }
}

//    public fun get_quiz_size(quiz: Quiz): u64 {
//     return quiz.questions.length();
//    }

//    public fun get_question(quiz:Quiz): vector<String> {
//     quiz.questions
//    }

//    #[test, expected_failure(abort_code = ::wwtbas::wwtbas_tests::ENotImplemented)]
//     fun test_can_add_question_to_quiz() {
//     let sender = @0x123;
//     let mut scenario = test_scenario::begin(sender);
//     let ctx = scenario.ctx();
//     let quiz = Quiz {
//         id: object::new(ctx),
//         questions
//     };
//     let question  = string::utf8(b"what is the capital of Malawi?");
//     quiz.add_question(question);
//     assert!(quiz.get_questions().len() > 0,0);

//     }






// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


