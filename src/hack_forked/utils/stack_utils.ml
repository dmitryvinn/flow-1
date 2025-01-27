(*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

(** Adds some utilities to the Stack module *)

module Ocaml_stack = Stack

module Stack = struct
  include Ocaml_stack

  let merge_bytes : string Stack.t -> string = function
    | stack ->
      let strs = Stack.fold (fun acc x -> x :: acc) [] stack in
      String.concat "" strs
end
