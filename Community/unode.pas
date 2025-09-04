unit UNode;

{$mode ObjFPC}{$H+}


interface
uses
  Classes, SysUtils, UList;

type
  PNode = ^TNode;
  TNode = record
    Data: PList;
    Next: PNode;
  end;
procedure CreateNode(var node: PNode; data: PList);

implementation
procedure CreateNode(var node: PNode);
begin
  if node = nil then
    begin
      WriteLn('The pointer of type Node is empty');
      Exit;
    end;
  New(node);
  node^.Data := data;
  node^.Next := nil;
end.

