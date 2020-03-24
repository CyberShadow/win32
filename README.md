Cross-platform Win32 declarations
=================================

The Windows API bindings contained in Druntime (under the `core.sys.windows` package)
primarily contain API declarations useful only on Windows, 
but also contain definitions for data structures 
which are [used on other platforms as well][1].

Unfortunately, these declarations are artificially restricted 
to be accessible only when targeting the Windows platform, 
and [it has been decided][2] that they will remain unavailable on non-Windows platforms.

The purpose of this package is to rectify this limitation, 
and make these declarations available for other platforms as well.

Implementation
--------------

The matter in which this project is implemented is wasteful and redundant, but is the best compromise found so far.

This repository is mostly a mirror of [the Druntime git repository][3], with the following differences:

 - All files in `src/core/sys/windows` have been moved to `src/win32`.
 - All commits not touching `src/core/sys/windows` are removed.
 - Tags are renamed to correspond to Semantic Versioning conventions, as required by Dub.
 - Module and import declarations are updated to refer to the `win32` package instead of `core.sys.windows`.
 - Files which contain Druntime implementation details (and not Windows API declarations) are removed.
 - The artificial platform restriction (`version (Windows):` at the top of each file) is disabled.
 - Implicit linking to the Windows import libraries is now opt-in (can be enabled using `-version=Win32_UseLib`).
 - Some non-template function definitions are converted to template functions.
   (This is done using regular expressions, so is not perfect.)
   This allows avoiding pulling in Windows API functions when the compiler/linker do not perform function-level garbage collection 
   (which is the case when compiling with DMD).
 - A short comment is added at the top of each file, explaining its provenance.
 - A `dub.sdl` and `README.md` file has been added to the repository root (on every ref).
 - A `win32-filter` branch is added, hosting this document and the scripts to perform the above conversion.

The following remain unchanged from the original repository:

 - The full history (affecting the `core.sys.windows` package) is preserved, up to the initial commit in 2008.
 - Except for the changes listed above, the source code is otherwise unchanged.
 - All branches are preserved, and track the corresponding Druntime branch.
 - All tags are preserved (other than SemVer renaming), and correspond to the matching D tag / release.

A script periodically rewrites this repository to include the latest changes from the Druntime repository.

Contributing
------------

Because this repository is automatically created from the Druntime one, 
it is not possible to make any meaningful changes on any branch except `win32-filter`.
(Allowing copies to diverge also [creates problems in itself][4].)

Instead, please contribute improvements to Win32 definitions by [improving][5] the [copy in Druntime][6].
Once your contribution is accepted, it will appear in this repository shortly.

If, for whatever reason, your Druntime contribution was rejected,
please [open an issue in this repository][7].


 [1]: https://github.com/dlang/druntime/pull/2616#issuecomment-496307985.
 [2]: https://github.com/dlang/druntime/pull/2616#issuecomment-503802283
 [3]: https://github.com/dlang/druntime
 [4]: https://github.com/dlang/druntime/pull/2616#issuecomment-496319973
 [5]: https://github.com/dlang/druntime/blob/master/CONTRIBUTING.md
 [6]: https://github.com/dlang/druntime/tree/master/src/core/sys/windows
 [7]: https://github.com/CyberShadow/win32/issues/new
