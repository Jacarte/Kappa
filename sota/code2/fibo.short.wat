\begin{lstlisting}[numbers=left]
(module
  ...  
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32) (result i32)))
  ...
  (type (;7;) (func))
  (type (;8;) (func (result i32)))
  ...
  (import "__wbindgen_placeholder__" "__wbg_log_40b82d094caf9248" (func (;1;) (type 0)))
  (import "__wbindgen_placeholder__" "__wbg_getinput_cab594059309410e" (func (;2;) (type 8)))
  ...
  (func (;40;) (type 1) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=88
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.add
      local.tee 2
      if  ;; label = @2
        local.get 1
        i32.const 16
        i32.add
        local.get 2
        call 35
        local.get 1
        i32.const 16
        i32.add
        i32.const 0
        i32.const 1048748
        call 36
        i32.const 1
        i32.store
        local.get 1
        i32.const 16
        i32.add
        i32.const 1
        i32.const 1048764
        call 36
        i32.const 1
        i32.store
        local.get 1
        i32.const 48
        i32.add
        local.get 0
        call 9
        local.get 1
        i32.const 32
        i32.add
        local.tee 2
        local.get 1
        i32.const 48
        i32.add
        local.tee 3
        i64.load align=4
        i64.store align=4
        local.get 2
        i32.const 8
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i32.load
        i32.store
        local.get 1
        i32.const 72
        i32.add
        local.get 1
        i32.const 40
        i32.add
        i32.load
        i32.store
        local.get 1
        local.get 1
        i64.load offset=32
        i64.store offset=64
        br 1 (;@1;)
      end
      i32.const 1048720
      i32.const 28
      i32.const 1048700
      call 206
      unreachable
    end
    loop  ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const -64
      i32.sub
      call 10
      local.get 1
      i32.load offset=8
      local.set 2
      local.get 1
      local.get 1
      i32.load offset=12
      i32.store offset=84
      local.get 1
      local.get 2
      i32.store offset=80
      local.get 1
      i32.load offset=80
      i32.eqz
      if  ;; label = @2
        local.get 1
        i32.const 16
        i32.add
        local.get 0
        i32.const 1048900
        call 36
        i32.load
        local.set 0
        local.get 1
        i32.const 16
        i32.add
        call 30
        local.get 1
        i32.const 96
        i32.add
        global.set 0
        local.get 0
        return
      end
      local.get 1
      local.get 1
      i32.load offset=84
      local.tee 2
      i32.store offset=92
      local.get 2
      i32.const 1
      i32.sub
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 1
              i32.ge_u
              if  ;; label = @6
                local.get 1
                i32.const 16
                i32.add
                local.get 3
                i32.const 1048836
                call 36
                i32.load
                local.set 3
                local.get 2
                i32.const 2
                i32.sub
                local.set 4
                local.get 2
                i32.const 2
                i32.lt_u
                br_if 2 (;@4;)
                br 1 (;@5;)
              end
              i32.const 1048800
              i32.const 33
              i32.const 1048780
              call 206
              unreachable
            end
            local.get 1
            i32.const 16
            i32.add
            local.get 4
            i32.const 1048868
            call 36
            i32.load
            local.tee 5
            local.get 3
            i32.add
            local.set 4
            local.get 5
            i32.const 0
            i32.lt_s
            local.get 3
            local.get 4
            i32.gt_s
            i32.xor
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          i32.const 1048800
          i32.const 33
          i32.const 1048852
          call 206
          unreachable
        end
        local.get 1
        i32.const 16
        i32.add
        local.get 2
        i32.const 1048884
        call 36
        local.get 4
        i32.store
        br 1 (;@1;)
      end
    end
    i32.const 1048720
    i32.const 28
    i32.const 1048836
    call 206
    unreachable)
  ...
  (func (;46;) (type 7)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    call 45
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 16
    i32.add
    global.set 0
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 48
    i32.add
    global.set 0
    local.get 0
    i32.const 16
    i32.add
    global.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  ...
  (table (;0;) 33 33 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1051753))
  (global (;2;) i32 (i32.const 1051760))
  (export "memory" (memory 0))
  (export "fibo" (func 40))
  ...
  (export "main" (func 46))
  ...
  (elem (;0;) (i32.const 1) func 220 96 92 137 207 160 143 149 146 148 144 140 141 145 164 165 166 167 143 139 143 194 191 193 143 221 201 214 211 215 143 139)
  (data (;0;) (i32.const 1048576) "invalid args\00\00\10\00\0c\00\00\00/rustc/8ede3aae28fe6e4d52b38157d7bfe0d3bceef225/library/core/src/fmt/mod.rs\00\14\00\10\00K\00\00\005\01\00\00\0d\00\00\00src/lib.rs\00\00p\00\10\00\0a\00\00\00\0e\00\00\00#\00\00\00\00\00\00\00attempt to add with overflowp\00\10\00\0a\00\00\00\0f\00\00\00\05\00\00\00p\00\10\00\0a\00\00\00\10\00\00\00\05\00\00\00p\00\10\00\0a\00\00\00\13\00\00\00&\00\00\00\00\00\00\00attempt to subtract with overflow\00\00\00p\00\10\00\0a\00\00\00\13\00\00\00\1a\00\00\00p\00\10\00\0a\00\00\00\13\00\00\00;\00\00\00p\00\10\00\0a\00\00\00\13\00\00\00/\00\00\00p\00\10\00\0a\00\00\00\13\00\00\00\09\00\00\00p\00\10\00\0a\00\00\00\16\00\00\00\05\00\00\00T\01\10\00\00\00\00\00/rustc/8ede3aae28fe6e4d52b38157d7bfe0d3bceef225/library/core/src/alloc/layout.rs\5c\01\10\00P\00\00\00\bf\01\00\00)\00\00\00\00\00\00\00attempt to divide by zero\00\00\00\00\00\00\00/usr/local/cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-0.2.88/src/lib.rs\00\00\00\e0\01\10\00]\00\00\00\8f\06\00\00\09\00\00\00assertion failed: old_size > 0\00\00\e0\01\10\00]\00\00\00F\06\00\00\0d\00\00\00assertion failed: new_size > 0\00\00\e0\01\10\00]\00\00\00G\06\00\00\0d\00\00\00invalid malloc request\00\00\04\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00\04\00\00\00\03\00\00\00invalid args\e0\02\10\00\0c\00\00\00/rustc/8ede3aae28fe6e4d52b38157d7bfe0d3bceef225/library/core/src/fmt/mod.rs\00\f4\02\10\00K\00\00\005\01\00\00\0d\00\00\00/rustc/8ede3aae28fe6e4d52b38157d7bfe0d3bceef225/library/core/src/alloc/layout.rsP\03\10\00P\00\00\00\bf\01\00\00)\00\00\00attempt to divide by zero/usr/local/cargo/registry/src/index.crates.io-6f17d22bba15001f/wasm-bindgen-0.2.88/src/externref.rs\c9\03\10\00c\00\00\00*\00\00\00\1b\00\00\00\00\00\00\00attempt to add with overflowsomeone else allocated table entries?allocation failuretable grow failurepush should be infallible now\00\00\c9\03\10\00c\00\00\008\00\00\00\1c\00\00\00\c9\03\10\00c\00\00\00A\00\00\00\09\00\00\00ret out of boundsfree reserved slot\00\c9\03\10\00c\00\00\00H\00\00\00\14")
  (data (;1;) (i32.const 1049888) "attempt to subtract with overflowslot out of boundsassertion failed: (free_count as usize) < self.data.len()\c9\03\10\00c\00\00\00Y\00\00\00\0d\00\00\00\c9\03\10\00c\00\00\00Z\00\00\00\0d\00\00\00\c9\03\10\00c\00\00\00`\00\00\00\09\00\00\00\04\00\00\00tls access failureinternal error: entered unreachable code: missing default value\00\00\00\d2\05\10\00?\00\00\00\c9\03\10\00c\00\00\00n\00\00\00\01\00\00\00called `Option::unwrap()` on a `None` value\00\07\00\00\00\04\00\00\00\04\00\00\00\08\00\00\00\09\00\00\00\0a\00\00\00memory allocation of  bytes failed\00\00p\06\10\00\15\00\00\00\85\06\10\00\0d\00\00\00library/std/src/alloc.rs\a4\06\10\00\18\00\00\00U\01\00\00\09\00\00\00library/std/src/panicking.rs\cc\06\10\00\1c\00\00\00P\02\00\00\1e\00\00\00\cc\06\10\00\1c\00\00\00O\02\00\00\1f\00\00\00\0b\00\00\00\0c\00\00\00\04\00\00\00\0c\00\00\00\07\00\00\00\08\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\10\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\07\00\00\00\08\00\00\00\04\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00\15\00\00\00\04\00\00\00\04\00\00\00\16\00\00\00\17\00\00\00\18\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00\94\07\10\00\11\00\00\00x\07\10\00\1c\00\00\00\0c\02\00\00\05\00\00\00a formatting trait implementation returned an error\00\19\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00library/alloc/src/fmt.rs\04\08\10\00\18\00\00\00b\02\00\00 \00\00\00\1f\00\00\00\00\00\00\00\01\00\00\00 \00\00\00index out of bounds: the len is  but the index is \00\00<\08\10\00 \00\00\00\5c\08\10\00\12\00\00\00matches!===assertion failed: `(left  right)`\0a  left: ``,\0a right: ``: \00\00\00\8b\08\10\00\19\00\00\00\a4\08\10\00\12\00\00\00\b6\08\10\00\0c\00\00\00\c2\08\10\00\03\00\00\00`\00\00\00\8b\08\10\00\19\00\00\00\a4\08\10\00\12\00\00\00\b6\08\10\00\0c\00\00\00\e8\08\10\00\01\00\00\00: \00\00,\08\10\00\00\00\00\00\0c\09\10\00\02\00\00\00library/core/src/fmt/num.rs\00 \09\10\00\1b\00\00\00i\00\00\00\14\00\00\000x00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899range start index  out of range for slice of length \00\00\16\0a\10\00\12\00\00\00(\0a\10\00\22\00\00\00Error"))

\end{lstlisting}