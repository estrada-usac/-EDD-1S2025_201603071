unit UComunity;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, UNode, UList;
type
  PComunity = ^TComunity;
  TComunity = record
    Head: PNode;
    Last: PNode;
    Size: Integer;
  end;
procedure InitComunity(var com: PComunity);
procedure AddListToComunity(var com: PComunity; list: PList);

implementation
procedure InitComunity(var  com: PComunity);
begin
  New(com);
  com^.Head := nil;
  com^.last := nil;
  com^.Size := 0;
end;

procedure AddListToComunity(var com: PComunity; list: PList);
var
  newNode: PNode;
begin
  CreateNode(newNode);
  if com^.Head = nil then
    begin
      com^.Head := newNode;
      com^.Last := newNode;
    end
  else
    begin
      com^.Last^.Next := newNode;
      com^.Last^ := newNode;
    end;
  Inc(list^.Size);
end;

end.

