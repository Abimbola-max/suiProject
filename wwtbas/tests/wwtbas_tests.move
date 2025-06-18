
#[test_only]
module wwtbas::wwtbas_tests {

use wwtbas::wwtbas;
use sui::test_scenario;

const ENotImplemented: u64 = 0;

#[test]
// fun test_can_create_quiz() {
//     let sender = @0x123;
//     let scenario = test_scenario::begin(sender);
//     let ctx = scenario.ctx();
//     wwtbas::new_quiz(ctx);
//     let effects = test_scenario::end(scenario);
//     assert!(scenario.num_concluded_txes()!= 0);
//     test_scenario::end(scenario);
// }

// #[test, expected_failure(abort_code = ::wwtbas::wwtbas_tests::ENotImplemented)]
// fun test_can_add_question_to_quiz() {
//     let sender = @0x123;
//     let scenario = test_scenario::begin(sender);
//     let ctx = scenario.ctx();
//     let quiz = wwtbas::Quiz {
//         id: object::new(ctx),
//     };
//     let question  = string::utf8(b"what is the capital of Malawi?");
//     quiz.add_question(question);
//     assert!(quiz.get_questions().len() > 0, ENotImplemented);
    
// }

}



