<?php
// Include the database configuration file
include '../dbConfig.php';
?>

<?php
if (isset($_POST["submit"])) {

    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $message = $_POST['message'];

    $insert = $db->query("INSERT into contact (id, name, mobile_number, email, address, message) VALUES (DEFAULT,'$name', '$phone', '$email', '$address', '$message')");
    if ($insert) {
?> <script>
            alert("Submitted Successfully")
            window.location.href = "/JB work/index.php";
        </script>
    <?php
    } else {
    ?> <script>
            alert("Submit Failed Try Later")
        </script>
<?php
    }
}
?>