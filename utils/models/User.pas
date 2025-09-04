unit User;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, IUser;

type
    TUser = class(TInterfacedObject, IUser)
      private
         FId:    Integer;
         FName:  string;
         FUser:  string;
         FPass:  string;
         FEmail: string;
         FPhone: Integer;
      public
         constructor Create(AId: Integer; AName, AUser, APass, AEmail: string; APhone: Integer);

         function GetId:    Integer;
         function GetName:  string;
         function GetUser:  string;
         function GetPass:  string;
         function GetEmail: string;
         function GetPHone: Integer;
    end;

implementation
  constructor TUser.Create(AId: Integer; AName, AUser, APass, AEmail: string; APHone: Integer);
  begin
       Fid    := AId;
       FName  := AName;
       FUser  := AUser;
       FPass  := APass;
       FEmail := AEmail;
       FPhone := APhone;
  end;

  function TUser.GetId: Integer;
  begin
       Result := FId;
  end;

  function TUser.GetName: string;
  begin
       Result := FName;
  end;

  function TUser.GetUser: string;
  begin
       Result := FUser;
  end;

  function TUser.GetPass: string;
  begin
       Result := FPass;
  end;

  function TUser.GetEmail: string;
  begin
       Result := FEmail;
  end;

  function TUser.GetPhone: Integer;
  begin
       Result := FPhone;
  end;

end.








