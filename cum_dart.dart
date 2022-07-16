
import 'dart:io';

import 'package:cum_dart/Pelajaran.dart';
Pelajaran matematika = Pelajaran("Matematika", "Matematika", "https://classroom.google.com/u/1/c/NTM1ODkxOTQwMDEx");
Pelajaran indo = Pelajaran("Bahasa Indonesia", "Bahasa Indonesia", "https://classroom.google.com/u/1/c/NDk2ODE3MzEzNTk5");
Pelajaran matrikul = Pelajaran("Matrikulasi", "Matrikulasi", "https://classroom.google.com/u/1/c/NDk2ODM0OTE3Nzk3");
Pelajaran ppkn = Pelajaran("PPKN", "PPKN", "https://classroom.google.com/u/1/c/NDk2ODE3MzQ1MTE0");
Pelajaran penjas = Pelajaran("Penjas", "Penjas", "https://classroom.google.com/u/1/c/NDk2ODI4OTkwOTE4");
Pelajaran kimia = Pelajaran("Kimia", "Kimia", "https://classroom.google.com/u/1/c/NDk2ODM1Mzc2NDg2");
Pelajaran geografi = Pelajaran("Geografi", "Geografi", "https://classroom.google.com/u/1/c/NDk2ODM1Mzk4ODU3");
Pelajaran sejarah = Pelajaran("Sejarah", "Sejarah", "https://classroom.google.com/u/1/c/NDk2ODM1Mzk4MTU0");
Pelajaran tik = Pelajaran("TIK", "TIK", "https://classroom.google.com/u/1/c/NDk2ODE2Mzk1NTc3");
Pelajaran sisio = Pelajaran("Sosiologi", "Sosiologi", "https://classroom.google.com/u/1/c/NDk2ODY2ODAxNDc1");
Pelajaran xingxong = Pelajaran("Mandarin", "Mandarin", "https://classroom.google.com/u/1/c/NDk2ODM0OTE2MjYz");
Pelajaran seni = Pelajaran("Seni", "Seni", "https://classroom.google.com/u/1/c/NDk2ODM0NjEzNTM0");
Pelajaran agama = Pelajaran("Agama", "Agama", "https://classroom.google.com/u/1/c/NDk2ODE4MjYyMzQy");
Pelajaran ekonomi = Pelajaran("Ekonomi", "Ekonomi" , "https://classroom.google.com/u/1/c/NTM1OTA1MzU5MTMx");

void main(){

todaypelajaran();
}

void todaypelajaran(){
  DateTime sekarang = DateTime.now();
 int hari = sekarang.weekday;
  String ?userInput;
      int tanggal = sekarang.day;
bool quit = false;
while (quit != true){
  switch (hari){
    case 1:
      print('''
      $tanggal日　（月）
      07:45-09:15   ${indo.namapelajaran}   ${indo.url}
      09:15-09:30   Istirahat          Istirahat
      09:30-11:00   ${indo.namapelajaran}   ${indo.url}
      11:00-12:30   ${matrikul.namapelajaran}        ${matrikul.url}
      12:30-01:00   Istirahat          Istirahat
      01:00-01:45   ${matematika.namapelajaran}         ${matematika.url}
      01:45-03:15   ${ppkn.namapelajaran}               ${ppkn.url}
      
      ''');
      break;
    case 2:
      print('''
      $tanggal日　（火）
      07:00-09:15   ${penjas.namapelajaran}             ${penjas.url}
      09:15-09:30   Istirahat          Istirahat
      09:30-11:45   ${kimia.namapelajaran}              ${kimia.url}
      11:45-12:30   ${geografi.namapelajaran}           ${geografi.url}
      12:30-01:00   Istirahat          Istirahat
      01:45-03:15   ${sejarah.namapelajaran}            ${sejarah.url}
     
      ''');
      break;
    case 3:
      print('''
      $tanggal日　（水）
      07:00-09:15   ${tik.namapelajaran}                ${tik.url}
      09:15-09:30   Istirahat          Istirahat
      09:30-10:15   ${sejarah.namapelajaran}            ${sejarah.url}
      10:15-12:30   ${geografi.namapelajaran}           ${geografi.url}
      12:30-01:00   Istirahat          Istirahat
      01:45-03:15   ${kimia.namapelajaran}              ${kimia.url}
     
      ''');
      break;
    case 4:
      print('''
      $tanggal日　（木）
      07:00-09:15   ${sisio.namapelajaran}          ${sisio.url}
      09:15-09:30   Istirahat          Istirahat
      09:30-11:00   ${xingxong.namapelajaran}           ${xingxong.url}
      11:00-12:30   ${seni.namapelajaran}               ${seni.url}
      12:30-01:00   Istirahat          Istirahat
      01:45-03:15   ${agama.namapelajaran}              ${agama.url}
     
      ''');
      break;
    case 5:
      print('''
      $tanggal日　（金）
      07:45-09:15   ${sisio.namapelajaran}          ${sisio.url}
      09:15-09:30   Istirahat          Istirahat
      09:30-10:15   ${sisio.namapelajaran}          ${sisio.url}
      10:15-12:30   ${matematika.namapelajaran}         ${matematika.url}
      12:30-01:00   Istirahat          Istirahat
      01:00-03:15   ${ekonomi.namapelajaran}            ${ekonomi.url}
      
      
      ''');
      break;
    default:
      print('never gonna give u up');
  }
  print("\n Do you want to exit?? (y/N)");
  userInput = stdin.readLineSync();
  if(userInput == "y"){
    quit = true;
  } else{
    quit = false;
  }

}
}