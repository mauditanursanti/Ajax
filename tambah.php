<?php
session_start();
//cek apakah user sudah login
if(!isset($_SESSION['username'])){
    die("Oops Anda belum login");//jika belum login jangan lanjut
}
//cek level user
if($_SESSION['level']!="admin"){
  header('location:../manager.php');
    // die("Anda bukan manager");
    //jika bukan admin jangan lanjut
}else{
  $username = $_SESSION['username']; 
  $level=$_SESSION['level'];
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tambah</title>
    <link href="style1.css" rel="stylesheet" type="text/css">
</head>
<body style="background: url(5.png);">
    <div class="con">
    <div class="kol1">
    <br><br><br><br><br><br><br><br>

    <h3>Tambah Data</h3> 
    <br><br>
    <form action="tambah_aksi.php" method='post'>
        <table align="center">
            <tr>
                <td><input type="text" name="title" placeholder="TITLE"></td>
                <td><input type="text" name="isi" placeholder="CONTENT"></td>
            </tr>
            
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Simpan"></td>
            </tr>
        </table>
    </form>
    </div>
    </div>
</body>
</html>