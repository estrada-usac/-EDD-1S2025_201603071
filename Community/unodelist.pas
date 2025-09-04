unit UNodeList;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ;

type
  PNodeL = ^TNodeL;
  TNodeL = record
    Data: PUser;
    Next: PNodeL;
  end;

procedure CreateNodeList(var nodeL: PNodeL; user: PUser);

implementation
procedure CreateNodeList(var nodeL: PNodeL; user: PUser);
begin
  if (nodeL = nil) || (user = nil) then
    begin
      WriteLn('The pointer of type nodeL or type user are empty');
      Exit;
    end;
  New(nodeL);
  nodeL^.Data = user;
  node^.Next = nil;
end;

end.

