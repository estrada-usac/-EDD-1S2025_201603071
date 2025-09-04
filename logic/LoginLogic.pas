unit LoginLogic;

{$mode objfpc}{$H+}

interface

uses
    IUserList, SysUtils;

type
    TLoginLogic = Class
      private
         FUserList: IUserList;

      public
         constructor Create(AUserList: IUserList);
         function Authenticate(const AUsername, APassword: string): Boolean;
    end;

implementation

  constructor TLoginLogic.Create(AUserList: IUserList);
  begin
       FUserList := AUserList;
  end;

  function TLoginLogic.Authenticate(const AUsername, APassword: string): Boolean;
  var
     User: IUser;
  begin
       Result := False;

       // Find User By Username
       User := FUserList.FindUserByUsername(AUsername);

       // Verify Password Match
       if User <>  nil then
          Result := User.GetPass = APassword;
  end;

end.











