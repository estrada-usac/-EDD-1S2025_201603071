unit IUserList;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, IUser;

type
  IUserList = interface
            {GUID} ['{8E4D7D87-2D84-4DF9-B041-47A3CF3B7994}']

            // Méthods
            Procedure AddUser(const AUser: IUser);
            function FindUserByUsername(const AUsername: string): IUser;
            function FindUserByEmail(const AEmail: string): IUser;
  end;


implementation

end.

