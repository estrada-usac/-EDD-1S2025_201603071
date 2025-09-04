unit UserList;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, IUser, IUserList;

type
    TUserList = class(TInterfaceObject, IUserList)
    private
           type
               PNode = ^Node;
               TNode = record
                     User: IUser;
                     Next: PNode;

           end;
    var
       FHead: PNode;

    public
          constructor Create;
          destructor Destroy; override;

          procedure AddUser(const AUser: IUser);
          function FindUserByUsername(const AUsername: string): IUser;
          function FindByEmail(const AEmail: string): IUser;
end;

implementation

              constructor TUserList.Create;
              begin
                FHead := nil;
              end;

              destructor TUserList.Destroy;
              var
                 Curr, Temp: PNode;
              begin
                   Curr := FHead;
                   while Curr <> nil do
                   begin
                        Temp := Curr^.Next;
                        Dispose(Curr);
                        Curr := Temp;
                   end;
                   inherited Destroy;
              end;


              procedure TUserList.AddUser(const AUser: IUser);
              var
                 NewNode: PNode;
              begin
                   New(NewNode);
                   NewNode^.User := AUser;
                   NewNode^.Next := FHead;
                   FHead := NewNode;
              end;


              function TUserList.FindUserByUsername(const AUsername: string): IUser;
              var
                 Curr: PNode;
              begin
                   Result := nil;
                   Curr := FHead;
                   while Curr <> nil do
                   begin
                        if Curr^.User.GetUser = AUsername then
                           Exit(Curr^.User);
                        Curr := Curr^.Next;
                   end;
              end;


              function TUserList.FindUserByEmail(const AEmail: string): IUser;
              var
                 Curr: PNode;
              begin
                   Result := nil;
                   Curr := FHead;
                   while Curr <> nil do
                   begin
                        if Curr^.User.GetEmail = AEMail then
                           Exit(Curr^.User);
                        Curr := Curr^.Next;
                   end;
              end;

end.

















