unit uFuncoes;

interface

uses Windows, Dialogs, Messages, DateUtils, SysUtils, Classes, Controls, Forms,
Variants, StdCtrls, Mask,Db, DBTables,DBIProcs,TypInfo,WinProcs, ExtCtrls, Registry,
ExtDlgs,Jpeg, DBXpress, SqlExpr, DBClient, Provider, FMTBcd, ComObj, udmDados;


Type
   TChars = set of Char;
   
Function StrZero(Zeros:string;Quant:integer):String;
function Empty(inString:String): Boolean;
Function Codifica( const Str1: string): String;
Function SysComputerName: string;
Function ContaCaracs(Edit:String): integer;
Function Replicate( Caracter:String; Quant:Integer ): String;
Function CPF(num: string): boolean;
Function CGC(num: string): boolean;
Function Alltrim(const Search: string): string;
Function DataExtenso(Data:TDateTime): String;
Function MesExtenso (xMes : TDateTime) : string;
function FormataCNPJ(CNPJ: string): string;
function FormataCPF(CPF: string): string;
function ValidarEMail(aStr: string): Boolean;
function RemoveChar(Const Texto:String):String;
function RemoveEnter(Const Texto:String):String;
Function Arredondar(Valor: Double; Dec: Integer): Double;
function Gerapercentual(valor:real;Percent:Real):real;
Function ValidarChaveNFe(const ChaveNFe: string):boolean;
function mvcodigomax(campo,tabela:string):integer;
function mvcodigomaxNFe(aTipoEmissao :string):integer;
function mvcodigomaxNFeModelo(aTipoEmissao, aModelo :string):integer;
function mvcodigomaxStr(campo,tabela:string):String;
Function GetAnoMesData(aData : TDatetime) : String;
function RemoveVirgula(Str:String): String;
Function NomeMaquina : String;
function TrocaCaracterEspecial(aTexto : string; aLimExt : boolean) : string;
Function UF_Combo(aUF : String) : Integer;
Function ValidaAnoInutilizacaoNumeracao(aData : TDatetime) : Integer;
function RemoveAcentos(Str:String): String;
Function UF_N(UF:String): Integer;
Function FormataFONE(sFONE: string): string;
function FormataFONE2(sFONE: string): string;
function FilterChars(const S: string; const ValidChars: TChars): string;
function Criptografia(mStr, mChave: string): string;
function DeleteChar(const Ch: Char; const S: string): string;

const
    MSG_OK   = 'Registro gravado com sucesso.';
    MSG_ERRO = 'Erro ao tentar gravar registro.';
    MSG_PERGUTA = 'Deseja excluir este registro?';
    MSG_PERMISSOES = 'Voc� n�o tem pemiss�o para isto';
    MSG_ERROR = 'Ocorreu um erro!';
    chave = 'email';


implementation

function StrZero(Zeros:string;Quant:integer):String;
{Insere Zeros � frente de uma string}
var
I,Tamanho:integer;
aux: string;
begin
  aux := zeros;
  Tamanho := length(ZEROS);
  ZEROS:='';
  for I:=1 to quant-tamanho do
  ZEROS:=ZEROS + '0';
  aux := zeros + aux;
  StrZero := aux;
end;

function Empty(inString:String): Boolean;
{Testa se a variavel est� vazia ou n�o}
Var
  index : Byte;
Begin
  index := 1;
  Empty := True;
  while (index <= Length(inString))and (index <> 0) do
  begin
  if inString[index] = ' ' Then
  begin
inc(index)
  end
  else
Begin
  Empty := False;
  index := 0
end;
  end;
end;

Function Codifica( const Str1: string): String;
{Encripta uma string}
var
Mascara,Str2: String;
PonM, PonS: Byte;
begin

Mascara := '#$%$'#13#12;
Str2 := '';
PonM := 1;
for PonS:=1 to length(Str1) do
  begin
  AppendStr( Str2, Chr( Ord(Str1[PonS]) Xor Ord(Mascara[PonM])));
  Inc( PonM);
  if PonM>Length(Mascara) then
  begin
  PonM:=1;
  end;
  Result := Str2;
  end;
end;

{ Sys }
function SysComputerName: string;
var
  I: DWord;
begin
  I := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(Result, I);
  Windows.GetComputerName(PChar(Result), I);
  Result := string(PChar(Result));
end;

Function ContaCaracs(Edit: String): integer;
{Retorna quantos caracteres tem um Edit especificado}
begin
     Result := Length(Edit);
end;

function Replicate(Caracter: String; Quant: Integer): String;
{Repete o mesmo caractere v�rias vezes}
var I : Integer;
begin
Result := '';
  for I := 1 to Quant do
  Result := Result + Caracter;
end;

Function CPF(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
d1,d2: integer;
digitado, calculado: string;
begin
n1:=StrToInt(num[1]);
n2:=StrToInt(num[2]);
n3:=StrToInt(num[3]);
n4:=StrToInt(num[4]);
n5:=StrToInt(num[5]);
n6:=StrToInt(num[6]);
n7:=StrToInt(num[7]);
n8:=StrToInt(num[8]);
n9:=StrToInt(num[9]);
d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
d1:=11-(d1 mod 11);
if d1>=10 then d1:=0;
d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
d2:=11-(d2 mod 11);
if d2>=10 then d2:=0;
calculado:=inttostr(d1)+inttostr(d2);
digitado:=num[10]+num[11];
if calculado=digitado then
  cpf:=true
  else
  cpf:=false;
end;

function cgc(num: string): boolean;
var
n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
d1,d2: integer;
digitado, calculado: string;
begin
n1:=StrToInt(num[1]);
n2:=StrToInt(num[2]);
n3:=StrToInt(num[3]);
n4:=StrToInt(num[4]);
n5:=StrToInt(num[5]);
n6:=StrToInt(num[6]);
n7:=StrToInt(num[7]);
n8:=StrToInt(num[8]);
n9:=StrToInt(num[9]);
n10:=StrToInt(num[10]);
n11:=StrToInt(num[11]);
n12:=StrToInt(num[12]);
d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
d1:=11-(d1 mod 11);
if d1>=10 then d1:=0;
d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
d2:=11-(d2 mod 11);
if d2>=10 then d2:=0;
calculado:=inttostr(d1)+inttostr(d2);
digitado:=num[13]+num[14];
if calculado=digitado then
  cgc:=true
  else
  cgc:=false;
end;

Function Alltrim(const Search: string): string;
{Remove os espa�os em branco de ambos os lados da string}
const
BlackSpace = [#33..#126];
var
Index: byte;
begin
Index:=1;
while (Index <= Length(Search)) and not (Search[Index] in BlackSpace) do
  begin
  Index:=Index + 1;
  end;
Result:=Copy(Search, Index, 255);
Index := Length(Result);
while (Index > 0) and not (Result[Index] in BlackSpace) do
  begin
  Index:=Index - 1;
  end;
Result := Copy(Result, 1, Index);
End;

function DataExtenso(Data:TDateTime): String;
{Retorna uma data por extenso}
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String;
  Meses : array [1..12] of String;
  Dia, Mes, Ano : Word;
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'domingo';
  DiaDasemana [2]:= 'segunda-feira';
  DiaDasemana [3]:= 'ter�a-feira';
  DiaDasemana [4]:= 'quarta-feira';
  DiaDasemana [5]:= 'quinta-feira';
  DiaDasemana [6]:= 'sexta-feira';
  DiaDasemana [7]:= 's�bado';
{ Meses do ano }
  Meses [1] := 'janeiro';
  Meses [2] := 'fevereiro';
  Meses [3] := 'mar�o';
  Meses [4] := 'abril';
  Meses [5] := 'maio';
  Meses [6] := 'junho';
  Meses [7] := 'julho';
  Meses [8] := 'agosto';
  Meses [9] := 'setembro';
  Meses [10]:= 'outubro';
  Meses [11]:= 'novembro';
  Meses [12]:= 'dezembro';
  DecodeDate (Data, Ano, Mes, Dia);
  NoDia := DayOfWeek (Data);
  Result :=  IntToStr(Dia) +' de ' + Meses[Mes]+ ' de ' + IntToStr(Ano)+'.';
  //DiaDaSemana[NoDia] + ', '
end;

Function MesExtenso (xMes : TDateTime) : string;
Var
Dia, Mes, Ano : Word;
begin
Mes := 0;
DecodeDate (xMes, Ano, Mes, Dia);
{Try
Mes := Round (xMes);
Except
End;}
case Mes of
1: Result := 'janeiro';
2: Result := 'fevereiro';
3: Result := 'mar�o';
4: Result := 'abril';
5: Result := 'maio';
6: Result := 'junho';
7: Result := 'julho';
8: Result := 'agosto';
9: Result := 'setembro';
10: Result := 'outubro';
11: Result := 'novembro';
12: Result := 'dezembro';
else
Result := '';
end;
end;


function FormataCNPJ(CNPJ: string): string;
begin
  Result :=Copy(CNPJ,1,2)+'.'+Copy(CNPJ,3,3)+'.'+Copy(CNPJ,6,3)+'/'+
    Copy(CNPJ,9,4)+'-'+Copy(CNPJ,13,2);
end;

function FormataCPF(CPF: string): string;
Begin              // 494.539.553-53
     result := Copy(CPF,1,3)+'.'+
               Copy(CPF,4,3)+'.'+
               Copy(CPF,7,3)+'-'+
               Copy(CPF,10,2);
End;

function ValidarEMail(aStr: string): Boolean;
begin
 aStr := Trim(UpperCase(aStr));
 if Pos('@', aStr) > 1 then
 begin
   Delete(aStr, 1, pos('@', aStr));
   Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
 end
 else
   Result := False;
end;

function RemoveChar(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
//
var
I: integer;
S: string;
begin
S := '';
for I := 1 To Length(Texto) Do
   begin
   if (Texto[I] in ['0'..'9']) then
       begin
       S := S + Copy(Texto, I, 1);
       end;
   end;
result := S;
end;

function RemoveEnter(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
//
var
I: integer;
S: string;
begin
S := '';
for I := 1 To Length(Texto) Do
   begin
   if (Texto[I] <> Chr(13)) then
       begin
       S := S + Copy(Texto, I, 1);
       end;
   end;
result := S;
end;

Function Arredondar(Valor: Double; Dec: Integer): Double;
var
  Valor1,
  Numero1,
  Numero2,
  Numero3: Double;
begin
  Valor1:=Exp(Ln(10) * (Dec + 1));
  Numero1:=Int(Valor * Valor1);
  Numero2:=(Numero1 / 10);
  Numero3:=Round(Numero2);
  Result:=(Numero3 / (Exp(Ln(10) * Dec)));
end;

function Gerapercentual(valor:real;Percent:Real):real;
// Retorna a porcentagem de um valor
begin
percent := percent / 100;
try
  valor := valor * Percent;
finally
  result := valor;
end;
end;

function ValidarChaveNFe(const ChaveNFe: string): boolean;
const
  PESO : Array[0..43] of Integer = (4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2, 0);
var
  Retorno : boolean;
  aChave  : Array[0..43] of Char;
  Soma    : Integer;
  Verif   : Integer;
  I       : Integer;
begin
  Retorno := false;
  try
    try
      if not Length(ChaveNFe) = 44 then
        raise Exception.Create('');


      StrPCopy(aChave,StringReplace(ChaveNFe,' ', '',[rfReplaceAll]));
      Soma := 0;
      for I := Low(aChave) to High(aChave) do
        Soma := Soma + (StrToInt(aChave[i]) * PESO[i]);
      if Soma = 0 then
        raise Exception.Create('');

      Soma := Soma - (11 * (Trunc(Soma / 11)));
      if (Soma = 0) or (Soma = 1) then
        Verif := 0
      else
        Verif := 11 - Soma;

      Retorno := Verif = StrToInt(aChave[43]);
    except
      Retorno := false;
    end;
  finally
    Result := Retorno;
  end;

end;

function mvcodigomax(campo,tabela:string):integer;
var qraux : TSQLquery;
    texto : string;
begin
  Result := 0;
  texto := 'Select max("'+campo+'") from "'+tabela+'"';
  //
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := DmDados.sqlConexao;
      sql.Add(texto);
      open;
      If not (IsEmpty) Then
         result := fields[0].AsInteger;
    finally
      free;
    end;
End;

function mvcodigomaxNFe(aTipoEmissao :string):integer;
var qraux : TSQLquery;
    texto : string;
begin
  Result := 0;
  texto := 'Select max(id) from nota_fiscal where (indicador_do_emitente = :pTipo) ';
  //
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := DmDados.sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pTipo').AsInteger := StrtoInt(aTipoEmissao);
      Open;
      If not (IsEmpty) Then
         result := fields[0].AsInteger;
    finally
      free;
    end;
End;

function mvcodigomaxNFeModelo(aTipoEmissao, aModelo :string):integer;
var qraux : TSQLquery;
    texto : string;
begin
  Result := 0;
  texto := 'Select max(id) from nota_fiscal where (indicador_do_emitente = :pTipo) and (modelo = :pmodelo) ';
  //
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := DmDados.sqlConexao;
      sql.Add(texto);
      Params.ParamByName('pTipo').AsInteger   := StrtoInt(aTipoEmissao);
      Params.ParamByName('pmodelo').Asinteger :=  StrtoInt(aModelo);
      Open;
      If not (IsEmpty) Then
         result := fields[0].AsInteger;
    finally
      free;
    end;
End;

function mvcodigomaxStr(campo,tabela:string):String;
var qraux : TSQLquery;
    texto : string;
begin
  Result := '0';
  texto := 'Select max("'+campo+'") from "'+tabela+'"';
  //
  QrAux := TSQLquery.Create(nil);
  with QrAux do
    try
      SQLConnection := DmDados.sqlConexao;
      sql.Add(texto);
      open;
      If not (IsEmpty) Then
         result := fields[0].AsString;
    finally
      free;
    end;
End;


Function GetAnoMesData(aData : TDatetime) : String;
Var
  aAnoMes : String;
begin
    aAnoMes := DatetoStr(aData);
    // 99/99/9999
    Result := Copy(aAnoMes, 9,2)+Copy(aAnoMes, 4,2);
End;

function RemoveVirgula(Str:String): String;
Const
    ComVirgula = ',';
    ComPonto = '.';
Var
    x : Integer;
    valor : string;
Begin
    For x := 1 to Length(Str) do
      if (Str[x] = ComVirgula) Then
        valor := valor + ComPonto
      Else
        valor := valor + Str[x];
    Result := valor;
end;

// Retorna o nome do computador
Function NomeMaquina : String;
var
    lpBuffer : PChar;
    nSize : DWord;
    const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
     try
          nSize := Buff_Size;
          lpBuffer := StrAlloc(Buff_Size);
          GetComputerName(lpBuffer,nSize);
          Result := String(lpBuffer);
          StrDispose(lpBuffer);
     except
          Result := '';
     end;
end;

function TrocaCaracterEspecial(aTexto : string; aLimExt : boolean) : string;
const
  //Lista de caracteres especiais
  xCarEsp: array[1..40] of String = ('�', '�', '�', '�', '�','�', '�', '�', '�', '�',
                                     '�', '�','�', '�', '�', '�','�', '�','�', '�',
                                     '�', '�', '�','�', '�','�', '�', '�', '�', '�',
                                     '�', '�', '�','�','�', '�','�','�','�','�');
  //Lista de caracteres para troca
  xCarTro: array[1..40] of String = ('a', 'a', 'a', 'a', 'a','A', 'A', 'A', 'A', 'A',
                                     'e', 'e','e', 'E', 'E', 'E','i', 'i','I', 'I',
                                     'o', 'o', 'o','o', 'o','O', 'O', 'O', 'O', 'O',
                                     'u', 'u', 'u','u','u', 'u','c','C','n', 'N');
  //Lista de Caracteres Extras
  xCarExt: array[1..48] of string = ('�','�','�','�','#','�','�','&','�',
                                     '�','�','_','=','{','}','[',']','?',
                                     ';',':',',','|','*','"','~','^','�','`',
                                     '�','�','�','�','�','�','�','�','�','�',
                                     '�','�','�','�','�','�','�','�','�',#13);
var
  xTexto : string;
  i : Integer;
begin
   xTexto := aTexto;
   for i:=1 to 40 do
     xTexto := StringReplace(xTexto, xCarEsp[i], xCarTro[i], [rfreplaceall]);
   //De acordo com o par�metro aLimExt, elimina caracteres extras.
   if (aLimExt) then
     for i:=1 to 48 do
       xTexto := StringReplace(xTexto, xCarExt[i], '', [rfreplaceall]);   
   Result := xTexto;
end;

Function UF_Combo(aUF : String) : Integer;
begin
     if (aUF = 'AC') then
       Result := 0;
     if (aUF = 'AL') then
       Result := 1;
     if (aUF = 'AM') then
       Result := 2;
     if (aUF = 'AP') then
       Result := 3;
     if (aUF = 'BA') then
       Result := 4;
     if (aUF = 'CE') then
       Result := 5;
     if (aUF = 'DF') then
       Result := 6;
     if (aUF = 'ES') then
       Result := 7;
     if (aUF = 'GO') then
       Result := 8;
     if (aUF = 'MA') then
       Result := 9;
     if (aUF = 'MG') then
       Result := 10;
     if (aUF = 'MS') then
       Result := 11;
     if (aUF = 'MT') then
       Result := 12;
     if (aUF = 'PA') then
       Result := 13;
     if (aUF = 'PB') then
       Result := 14;
     if (aUF = 'PE') then
       Result := 15;
     if (aUF = 'PR') then
       Result := 16;
     if (aUF = 'PI') then
       Result := 17;
     if (aUF = 'RJ') then
       Result := 18;
     if (aUF = 'RN') then
       Result := 19;
     if (aUF = 'RO') then
       Result := 20;
     if (aUF = 'RR') then
       Result := 21;
     if (aUF = 'RS') then
       Result := 22;
     if (aUF = 'SC') then
       Result := 23;
     if (aUF = 'SE') then
       Result := 24;
     if (aUF = 'SP') then
       Result := 25;
     if (aUF = 'TO') then
       Result := 26;
End;

Function ValidaAnoInutilizacaoNumeracao(aData : TDatetime) : Integer;
Var
  ano : String;
begin
    ano := Copy(DatetoStr(aData),7,4);
    //
    If (aData > Date()) Then
       Result := 0
    Else
    if (StrtoInt(ano) < 2006) Then
       Result := 1
    Else
      Result := 2;
    {Ano da Inutiliza��o n�o pode ser superior ao Ano atual Obrig. 453 Rej.
    I02c Ano da inutiliza��o n�o pode ser inferior a 2006}
End;


function RemoveAcentos(Str:String): String;
{Remove caracteres acentuados de uma string}
Const ComAcento = '����������������������������';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
x : Integer;
Begin
For x := 1 to Length(Str) do
  Begin
  if Pos(Str[x],ComAcento)<>0 Then
  begin
  Str[x] := SemAcento[Pos(Str[x],ComAcento)];
  end;
  end;
Result := Str;
end;


Function UF_N(UF:String): Integer;
var
     UF_N : String;
begin
     if UF = 'RO' then result := 11;
     if UF = 'AC' then result:= 12;
     if UF = 'AM' then result:= 13;
     if UF = 'RR' then result:= 14;
     if UF = 'PA' then result:= 15;
     if UF = 'AP' then result:= 16;
     if UF = 'TO' then result:= 17;
     if UF = 'MA' then result:= 21;
     if UF = 'PI' then result:= 22;
     if UF = 'CE' then result:= 23;
     if UF = 'RN' then result:= 24;
     if UF = 'PB' then result := 25;
     if UF = 'PE' then result := 26;
     if UF = 'AL' then result := 27;
     if UF = 'SE' then result := 28;
     if UF = 'BA' then result := 29;
     if UF = 'MG' then result:= 31;
     if UF = 'ES' then result:= 32;
     if UF = 'RJ' then result:= 33;
     if UF = 'SP' then result:= 35;
     if UF = 'PR' then result:= 41;
     if UF = 'SC' then result:= 42;
     if UF = 'RS' then result:= 43;
     if UF = 'MS' then result:= 50;
     if UF = 'MT' then result:= 51;
     if UF = 'GO' then result:= 52;
     if UF = 'DF' then result:= 53;
End;

function FormataFONE(sFONE: string): string;
Begin
     // 99 9999 9999
     result := '('+Copy(sFONE,1,2)+')' +Copy(sFONE,3,4)+'-' +Copy(sFONE,7,4);
End;

function FormataFONE2(sFONE: string): string;
begin
     // 9999 9999
     result :=    Copy(sFONE,1,4)+'-'
                  +Copy(sFONE,5,4);
End;

Function FilterChars(const S: string; const ValidChars: TChars): string;
var
  I: integer;
begin
     Result := '';
     for I := 1 to Length(S) do
        if S[I] in ValidChars then
     //
     Result := Result + S[I];
end;

function Criptografia(mStr, mChave: string): string;
var
  i, TamanhoString, pos, PosLetra, TamanhoChave: Integer;
begin
  Result := mStr;
  TamanhoString := Length(mStr);
  TamanhoChave := Length(mChave);
  for i := 1 to TamanhoString do
  begin
      pos := (i mod TamanhoChave);
      if pos = 0 then
        pos := TamanhoChave;
      posLetra := ord(Result[i]) xor ord(mChave[pos]);
      if posLetra = 0 then
        posLetra := ord(Result[i]);
      Result[i] := chr(posLetra);
  end;
end;

function DeleteChar(const Ch: Char; const S: string): string;
var
  Posicao: integer;
begin
  Result := S;
  Posicao := Pos(Ch, Result);
  while Posicao > 0 do
   begin
      Delete(Result, Posicao, 1);
      Posicao := Pos(Ch, Result);
   end;
end;

end.
