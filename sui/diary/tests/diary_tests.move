
module diary::diary_tests;
    use diary::diary;

#[test]
public fun test_diary() {
    assert!(diary::hello_world() == b"Hello, world!".to_string());
}

// #test, expected_failure(abort_code = ::diary::diary_tests::ENotImplemented)]
// fun test_diary_fail() {
//     abort ENotImplemented
// }

