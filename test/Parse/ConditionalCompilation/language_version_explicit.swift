// RUN: %target-typecheck-verify-swift -swift-version 4.2

#if swift(>=4)
  let w = 1
#else
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#endif

#if swift(>=4.0)
  let x = 1
#else
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#endif

#if swift(>=4.0.0)
  let y = 1
#else
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#endif

// NOTE: Please modify this condition...
#if swift(>=4.2)
  let b = 1
#else
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#endif

// NOTE: ...and modify this condition...
#if swift(>=4.2.1)
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#else
  let c = 1
#endif
// NOTE: ...the next time the version goes up.

#if swift(<4)
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#else
  let a = 1
#endif

#if !swift(<4)
  let b = 1
#else
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#endif

#if swift(<4.0)
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#else
  let c = 1
#endif

#if swift(<4.0.0)
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#else
  let d = 1
#endif

#if swift(<4.0.1)
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#else
  let e = 1
#endif

#if swift(<99)
  let f = 1
#else
  // This shouldn't emit any diagnostics.
  asdf asdf asdf asdf
#endif

