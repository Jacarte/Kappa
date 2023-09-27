\begin{lstlisting}[numbers=left]
; WebAssembly magic bytes(\0asm) and version (1.0) ;
(module
; Type section: 0x01 0x00 0x00 0x00 0x13 ... ;
  (type (;0;) (func (param f32) (result i32))) (*@\label{tpe1}@*)
  (type (;1;) (func))(*@\label{tpe2}@*)
  (type (;2;) (func (result i32)))(*@\label{tpe3}@*)
; Import section: 0x02  0x00 0x00 0x00 0x57 ... ;
  (import "env" "ftoi" (func $ftoi (type 0)))(*@\label{import1}@*) (*@\tikzmarkMap{3}{}{-68.5}{1}{2.0cm}@*)
; Custom section: 0x00 0x00 0x00 0x00 0x7E ;
  (@custom "name" "...")
; Code section: 0x03 0x00 0x00 0x00 0x5B... ;
  (func $main (type 2) (result i32)(*@\label{func1}@*)
    (local i32 i32)
    i32.const -1000
    local.set 0
    block  ;label = @1; (*@\label{block1}@*)
      loop  ;label = @2; (*@\label{block2}@*)
        i32.const 0
        local.get 0
        i32.add
        i32.load (*@\label{load}@*)
        local.tee 1
        i32.const 101
        i32.ge_s
        br_if 1 ;@1; (*@\label{break1}@*)
        local.get 0
        i32.const 4
        i32.add
        local.tee 0
        br_if 0 ;@2; (*@\label{break2}@*)
      end (*@\label{end1}@*)
      i32.const 0
      return
    end (*@\label{end2}@*)
    f32.const 0x1.9147aep+3
    call $ftoi (*@\label{call}@*) (*@\tikzmarkMap{2}{}{-21.5}{1}{2.0cm}@*)
    local.get 1
    i32.add) (*@\label{result}@*)
; Memory section: 0x05 0x00 0x00 0x00 0x03 ... ;
  (memory (;0;) 1) (*@\label{mem1}@*)
; Global section: 0x06 0x00 0x00 0x00 0x11.. ;
  (global (;4;) i32 (i32.const 1000))(*@\label{global1}@*)
; Export section: 0x07 0x00 0x00 0x00 0x72 ... ;
  (export "memory" (memory 0)) (*@\label{export1}@*)
  (export "A" (global 2))(*@\label{export2}@*)
; Data section: 0x0d 0x00 0x00 0x03 0xEF  ... ;
  (data $data (0) "\00\00\00\00...")(*@\label{data}@*)
; Custom section: 0x00 0x00 0x00 0x00 0x2F ;
  (@custom "producers" "...")
)
\end{lstlisting}