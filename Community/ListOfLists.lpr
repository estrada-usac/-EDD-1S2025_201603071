program ListOfLists;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  Classes, SysUtils, CustApp, UComunity, UNode, UList, UNodeList;
var
  comunity: PComunity;
begin
  comunity:=nil;
  //Here we will have the list of our projects
  //Ex. list: PList;
  //We pass this list to the comunity
  InitComunity(comunity);
  AddListToComunity(comunity, list);

end.

