program EDDMail;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // Necesario para LCL
  Forms, UnitLogin, LoginLogic, IUserList, IUser, User, userlist;
  Forms;
{$R *.res}

begin
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.Run;
end.


