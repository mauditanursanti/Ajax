<?php
    include 'koneksi1.php';

    $id = $_POST['id_post'];
    $title = $_POST['title'];
    $isi = $_POST['isi'];
  $tanggal = date("Y-m-d H:i:s");
 
    mysqli_query($db,"update post set title='$title',isi='$isi',tanggal='$tanggal' where id_post='$id'");

    header("location:home.php");
?>