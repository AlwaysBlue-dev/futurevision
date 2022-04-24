<?php
// Include the database configuration file
include '../dbConfig.php';
$statusMsg = '';

// File upload path
$targetDir = "uploads/";
$fileName = basename($_FILES["file"]["name"]);
$fileName2 = basename($_FILES["file2"]["name"]);
$fileName3 = basename($_FILES["file3"]["name"]);
$fileName4 = basename($_FILES["file4"]["name"]);
$targetFilePath = $targetDir . $fileName;
$targetFilePath2 = $targetDir . $fileName2;
$targetFilePath3 = $targetDir . $fileName3;
$targetFilePath4 = $targetDir . $fileName4;
$fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);
$filepath = "uploads/ . $fileName";


if (isset($_POST["submit"])) {

    $landarea = $_POST['landarea'];
    $servicetype = $_POST['servicetype'];
    $mobilenumber = $_POST['mobilenumber'];
    $email = $_POST['email'];
    $customername = $_POST['customername'];
    $note = $_POST['note'];
    if (!empty($_FILES["file"]["name"]) && (!empty($_FILES["file2"]["name"]))) {
        if (!empty($_FILES["file3"]["name"]) && (!empty($_FILES["file4"]["name"]))) {
            // Allow certain file formats
            $allowTypes = array('jpg', 'png', 'jpeg', 'gif', 'pdf');
            if (in_array($fileType, $allowTypes)) {
                // Upload file to server
                if (move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath) &&  (move_uploaded_file($_FILES["file2"]["tmp_name"], $targetFilePath2))) {
                    if (move_uploaded_file($_FILES["file3"]["tmp_name"], $targetFilePath3) &&  (move_uploaded_file($_FILES["file4"]["tmp_name"], $targetFilePath4))) {
                        // Insert image file name into database
                        $insert = $db->query("INSERT into sort (id, land_area, service_type, mobile_number, email, customer_name, license_photo, 
                        picture_of_instrument,orderid_commercial_register, engineering_diagram,note) 
                        VALUES (DEFAULT,'$landarea','$servicetype','$mobilenumber','$email','$customername', '$targetFilePath',
                         '$targetFilePath2', '$targetFilePath3','$targetFilePath4', '$note')");
                        if ($insert) {
?>
                            <script>
                                alert("Submited Successfully")
                                window.location.href = "/JB work/request.php";
                            </script>

                        <?php
                        } else {
                        ?>
                            <script>
                                alert("Submited Failed Try Later")
                                window.location.href = "/JB work/request.php";
                            </script>

                        <?php
                        }
                    } else {
                        ?>
                        <script>
                            alert("Submited Failed Try Later")
                            window.location.href = "/JB work/request.php";
                        </script>

                <?php
                    }
                }
            } else {
                ?>
                <script>
                    alert("Sorry, only JPG, JPEG, PNG, GIF, & PDF files are allowed to upload")
                    window.location.href = "/JB work/request.php";
                </script>

            <?php
            }
        } else {
            ?>
            <script>
                alert("Please select a file to upload")
                window.location.href = "/JB work/request.php";
            </script>

<?php

        }
    }
}
