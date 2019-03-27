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
    <title>Edit</title>
    <link href="style1.css" rel="stylesheet" type="text/css">
</head>
<body>
    <h3>Edit Data</h3>
    <br><br>
    <?php
        include 'koneksi1.php';
        $id = $_GET['id_post'];
        $data = mysqli_query($db,"select * from post where id_post='$id'");
        while($d = mysqli_fetch_array($data)) {
    ?>
    <form method="post" action="update.php">
        <table align="center">
            <tr>
                <td>TITLE</td>
                <td>
                    <input type="hidden" name="id_post" value="<?php echo $d['id_post'] ;?>">
                    <input type="text" name="title" value="<?php echo $d['title'] ;?>">
                </td>
            </tr>
            <tr>
                <td>CONTENT</td>
                <td><input type="text" name="isi" value="<?php echo $d['isi'] ;?>"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Simpan"></td>
            </tr>
        </table>
    </form>
            <?php
        }
        ?>
</body>
</html>