// RUN: %target-typecheck-verify-swift

func youll_be_back(soon_youll_see: () -> ()) -> (() -> ()) {
    func youll_remember_you_belong_to_me() {
        soon_youll_see()
    }
    youll_remember_you_belong_to_me()
    
    return youll_remember_you_belong_to_me // expected-error {{nested function cannot capture non-escaping closure and escape}}
}

