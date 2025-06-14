
/// Module: wwtbas
module wwtbas::wwtbas {
    use sui::object

   public struct Quiz has key, store {
    id: UID,

   }

//    public fun get_id(quiz: Quiz): UID {
//         quiz.id
//    }

   public fun new_quiz(ctx: &mut TxContext): Quiz {
    let quiz= Quiz{
        id:object::new(ctx),

    };
    quiz
      
   }
}





// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions


