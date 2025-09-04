unit UList;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, UNodeList;

type
  PList = ^TList;
  TList = record
    Head: PNodeL;
    Last: PNodeL;
    Size: Integer;
  end;
procedure InitList(var l: PList);
procedure add(var l: PList; user: PUser);

implementation
procedure InitList(var l: PList);
begin
  New(l);
  l^.Head := nil;
  l^.Last := nil;
  l^.Size := 0;
end;

procedure add(var l: PList; user: PUser);         //recieved the simple list and the user
var
  newNode: PNodeL;                                    //Init a new Node
begin
  CreateNodeList(newNode, user);                      //Create the node of the list (Node, user);
  if l^.Head = nil then                               //If the list is empty
    begin
      l^.Head := newNode;                             //the head is the newNode
      l^.Last := newNode;                             //and the last is the newNode
    end
   else
     begin                                             //if the list already has a node
       l^.Last^.Next := newNode;                       //the last node.next = newNode
       l^.Last := newNode;                             //the newNode now is the last
     end;
   Inc(l^.Size);                                       //size +=1
end;

end.

