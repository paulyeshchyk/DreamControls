
//--------------- user section ----------------------------

{If you have Standard version of Delphi/CPB comment out this define}
//{$DEFINE PRODELPHI}


{If you have Client/Server version of Delphi/CPB uncomment this define}
{$DEFINE CSDELPHI}

{If you do not want BDE to be used in the program comment out this define}
//{$DEFINE USEBDE}



{If you have QuickReport V2 or higher installed uncomment this define}
//{$DEFINE NEEDQREPUNDERD5}    // uncommented by default
//{$DEFINE NEEDQREP}

{If you have Far East Locale uncomment this define}
//{$DEFINE DCMBCS}

//{$DEFINE ENGLISH_LANGUAGE}
//{$DEFINE GERMAN_LANGUAGE}
//{$DEFINE SPANISH_LANGUAGE}
{$DEFINE RUSSIAN_LANGUAGE}

//--------------- Dream Company section ----------------------------

{$O+,A+,W-,R-,Q-,B-,X+,T-,P+,H+,J+,C-H+}


{ Comment out this define before release }
//{$DEFINE DEBUG}

//{$DEFINE CLX}

{$IFDEF CSDELPHI}
{$DEFINE PRODELPHI}
{$ENDIF}

{$IFDEF BCB}
{$IFDEF VER130}
{$DEFINE CPB5}
{$DEFINE CPB4}
{$DEFINE CPB3}
{$DEFINE D3}
{$DEFINE D4}
{$DEFINE D5}
{$ENDIF}
{$ENDIF}

{$IFDEF VER93}
{$DEFINE BCB}
{$DEFINE CPB1}
{$ENDIF}

{$IFNDEF VER80}
 {$IFNDEF VER90}
  {$IFNDEF VER93}
    {$IFDEF VER110}
      {$DEFINE CPB3} { C++ Builder 3.0 or higher}
      {$DEFINE BCB}
    {$ENDIF}
    {$DEFINE D3} { Delphi 3.0 or higher }
  {$ENDIF}
 {$ENDIF}
{$ENDIF}

{$IFDEF VER120}
  {$DEFINE D4}
  {$DEFINE D3}
  {$DEFINE CPB3}
{$ENDIF}

{$IFDEF VER125}
{$DEFINE CPB4}
{$DEFINE D4}
{$DEFINE D3}
{$DEFINE CPB3}
{$DEFINE BCB}
{$ENDIF}

{$IFDEF VER130}
{$DEFINE CPB4}
{$DEFINE D4}
{$DEFINE D3}
{$DEFINE CPB3}
{$DEFINE D5}
{$ENDIF}

{$IFDEF VER140}
{$DEFINE CPB3}
{$DEFINE CPB4}
{$DEFINE CPB5}
{$IFDEF BCB}  
{$DEFINE CPB6}
{$ENDIF}
{$DEFINE D3}
{$DEFINE D4}
{$DEFINE D5}
{$DEFINE D6}
{$ENDIF}

{$IFDEF VER150}
{$DEFINE CPB3}
{$DEFINE CPB4}
{$DEFINE CPB5}
{$DEFINE CPB6}
{$DEFINE D3}
{$DEFINE D4}
{$DEFINE D5}
{$DEFINE D6}
{$DEFINE D7}
{$ENDIF}



//{$IFDEF VER180}
{$DEFINE CPB3}
{$DEFINE CPB4}
{$DEFINE CPB5}
{$DEFINE CPB6}
{$DEFINE D3}
{$DEFINE D4}
{$DEFINE D5}
{$DEFINE D6}
{$DEFINE D7}
{$DEFINE D2006}
//{$ENDIF}


{$IFDEF CPB6}
{$DEFINE C6}
{$ENDIF}

{$IFDEF CPB4}
{$DEFINE C4}
{$ENDIF}
{$IFDEF CPB5}
{$DEFINE C5}
{$ENDIF}
{$IFDEF CPB3}
{$DEFINE C3}
{$ENDIF}

{$IFNDEF D3}
  {$DEFINE USEBDE}
{$ENDIF}

{$IFNDEF PRODELPHI}
 {$UNDEF QREP}
{$ENDIF}

{$IFDEF DEMO}
{$D-,L-,Y-}
{$ENDIF}

{$IFDEF D3}
{$DEFINE SHELLOBJ}
{$ENDIF}

//{$DEFINE DOS32}

{$DEFINE WIN}

{$DEFINE MSWINDOWS}

{$IFDEF WIN32}
{$IFNDEF DOS32}
{$DEFINE WINDOWS}
{$ENDIF}
{$ENDIF}

{$IFNDEF WIN}
{$UNDEF SHELLOBJ}
{$ENDIF}

{$IFDEF PRODELPHI}
  {$DEFINE USEMASKEDIT}
{$ELSE}
  {$IFDEF BCB}
    {$DEFINE USEMASKEDIT}
  {$ENDIF}
{$ENDIF}

{$IFNDEF USEVCLDESIGNER}
{$IFDEF D6}
{$DEFINE USEOWNDSGNSTUFF}
{$ENDIF}
{$ENDIF}

{$IFNDEF LINUX}
  {$IFNDEF D6}
    {$DEFINE MSWINDOWS}
  {$ENDIF}
{$ENDIF}

{$DEFINE _USE_DFM2HTML_}

{$IFDEF DEBUG}
{$O-}
{$ENDIF}

//{$DEFINE SKIPVCLREG}
//{$DEFINE SKIPDREAMREG}

{$DEFINE OLDSTYLEFREEPROCS}

{$IFDEF NEEDQREPUNDERD5}
{$IFDEF D5}
{$DEFINE NEEDQREP}
{$ENDIF}
{$ENDIF}

{$IFDEF NEEDQREP}
{$IFNDEF D6}
{$IFNDEF C5}
{$DEFINE QREP}
{$ENDIF}
{$ENDIF}
{$ENDIF}


////  --  D7 added ///
{$IFDEF D7}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN SYMBOL_DEPRECATED OFF}
{$ENDIF}


