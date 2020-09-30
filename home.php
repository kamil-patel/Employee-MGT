<?php
session_start();
if (empty($_SESSION['admin_id'])) {
    header('location:login.php');
}
include_once './dbop/user.php';
$objUser = new User();
$data = $objUser->select();
?>
<!DOCTYPE html>
<html lang="aa" xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>User Listing</title>
    </head>
    <body>
            <h2>User List</h2>
            <a  href="logout.php">Logout</a>
            <table border="3">
                    <tr>
                        <th>First name</th>
                        <th>Last name</th>
                        <th>Contact</th>
                        <th>Email</th>
                    </tr>
                    <?php
                    while ($fetchData = mysqli_fetch_array($data)) {
                        ?>
                        <tr>
                            <td><?php echo $fetchData['fname']; ?></td>
                            <td><?php echo $fetchData['lname']; ?></td>
                            <td><?php echo $fetchData['contact']; ?></td>
                            <td><?php echo $fetchData['Email']; ?></td>
                        </tr>
                    <?php } ?>
            </table>
    </body>
</html>

