<?php
if (isset($_POST['sub'])) {
    include_once './dbop/user.php';

    $objUser = new User();
    $user_id = $objUser->insert($_POST['Email'], $_POST['password']);
    $objUser->userProfileAdd($user_id, $_POST['fname'], $_POST['lname'], $_POST['contact']);
    header("location:home.php");
}
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Add User</title>
    </head>
    <body>
            <h2>User form</h2>
            <form action="insert.php" method="post">
                <table border="3">
                    <tr>
                        <th>First Name:</th>
                        <td><input type="text" class="form-control" placeholder="Enter First Name" name="fname"></td>
                    </tr>
                    <tr>
                        <th> Last Name: </th>
                        <td><input type="text" class="form-control" placeholder="Enter Last Name" name="lname"></td>
                    </tr>
                    <tr>
                        <th>Contact:</th>
                        <td><input type="text" class="form-control" placeholder="Enter Contact" name="contact"></td>
                    </tr>
                    <tr>
                    <td><input type="submit" class="btn btn-primary" name="sub"></td>
                    </tr>
                </table>
            </form>
    </body>
</html>
