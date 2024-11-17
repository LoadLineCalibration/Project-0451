// ----------------------------------------------------------------------------
// Unreal build settings (UnBuild.h).
// ----------------------------------------------------------------------------

unit DeusEx.Core.UnBuild;

interface

//
// Copy-paste!
//
// When running in DEBUG mode, all errors intentionally trigger a breakpoint.
// Therefore, DEBUG  builds are only suitable for running from within the debugger.
// If you run DEBUG builds outside the debugger, you will get a GPF when an error
// occurs instead of a useful error message.  If this is what you want,
// define _REALLY_WANT_DEBUG and recompile.
//
// This message is here because Visual C++ sets itself to DEBUG mode when you
// first load Unreal.dsw, which is probably not what you want.
//
// Always do a full recompile of 100% of the C++ code (all DLL's and EXE's)
// when switching between DEBUG and RELEASE builds.  The two builds generate
// the same named EXE's and DLL's, but they are not compatible.
//
// LLC: I don't think we need that...
//
{$DEFINE REALLY_WANT_DEBUG = True}
{$IFDEF DEBUG}
  {$IFNDEF REALLY_WANT_DEBUG}
    {$MESSAGE FATAL 'Your active configuration is set to DEBUG. Click here for important information!'}
  {$ENDIF}
{$ENDIF}
// ----------------------------------------------------------------------------
// Major build options.
// ----------------------------------------------------------------------------
const
  DO_CHECK = True;       // Whether to turn off all checks.
  DO_GUARD = True;       // Whether to track call-stack errors.
  DO_GUARD_SLOW = False; // Whether to track call-stack errors in performance-critical routines.
  DO_CLOCK_SLOW = False; // Whether to perform CPU-intensive timing of critical loops.
  STATS = True;          // Whether to gather performance statistics.
  USE_ASM = True;        // Whether to use Intel assembler code.
  ASM3DNOW = True;       // Whether to use 3DNow! assembler code.
  ASMKNI = True;         // Whether to use Katmai assembler code.
  DEMOVERSION = False;   // Demo version.

implementation
end.

