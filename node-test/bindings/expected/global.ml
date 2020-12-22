[@@@js.dummy "!! This code has been generated by gen_js_api !!"]
[@@@ocaml.warning "-7-32-39"]
type timeout_id = Ojs.t
let rec (timeout_id_of_js : Ojs.t -> timeout_id) = fun x2 -> x2
and (timeout_id_to_js : timeout_id -> Ojs.t) = fun x1 -> x1
type interval_id = Ojs.t
let rec (interval_id_of_js : Ojs.t -> interval_id) = fun x4 -> x4
and (interval_id_to_js : interval_id -> Ojs.t) = fun x3 -> x3
let (set_interval : (unit -> unit) -> int -> interval_id) =
  fun x5 ->
    fun x6 ->
      interval_id_of_js
        (Ojs.call Ojs.global "setInterval"
           [|(Ojs.fun_to_js 1 (fun _ -> x5 ()));(Ojs.int_to_js x6)|])
let (set_timeout : (unit -> unit) -> int -> timeout_id) =
  fun x7 ->
    fun x8 ->
      timeout_id_of_js
        (Ojs.call Ojs.global "setTimeout"
           [|(Ojs.fun_to_js 1 (fun _ -> x7 ()));(Ojs.int_to_js x8)|])
let (clear_timeout : timeout_id -> unit) =
  fun x9 -> ignore (Ojs.call (timeout_id_to_js x9) "clearTimeout" [||])
let (clear_interval : interval_id -> unit) =
  fun x10 -> ignore (Ojs.call (interval_id_to_js x10) "clearInterval" [||])