unit LoginLogic;

{$mode objfpc}{$H+}

interface

function ValidateLogin(const User, Password: string): Boolean;

implementation

function ValidateLogin(const User, Password: string): Boolean;
begin
  Result := (User = 'admin') and (Password = '1234');
end;

end.


