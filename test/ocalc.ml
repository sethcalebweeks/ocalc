open OUnit2
open Ocalc.Entry

let make_i n i s =
  n >:: (fun _ -> assert_equal (string_of_int i) (interp s))

let tests = [
  make_i "int" 22 "22";
  make_i "int" 22 "11+11"
]

let () = run_test_tt_main ("suite-" >::: tests)