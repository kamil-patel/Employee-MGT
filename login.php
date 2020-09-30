<?php
session_start();
if (isset($_POST['sub'])) {
    include_once './dbop/admin.php';
    $objUser = new Admin();
    $data = $objUser->login($_POST['username'], $_POST['password']);
    $fetchData = mysqli_fetch_assoc($data);

    if (!empty($fetchData)) {
        $_SESSION['admin_id'] = $fetchData['admin_id'];
        header("location:home.php");
    } else {
        echo "<h3>Invalid Username or password</h3>";
    }
}
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Log In</title>
    </head>
    <body>
            <h2>Admin Login</h2>
            <form action="login.php" method="post">
                <table border="3">
                    <tr>
                        <th>User Name</th>
                        <td><input type="text" class="form-control" placeholder="Enter User Name" name="username"></td>
                    </tr>    
                    <tr>
                        <th>Password</th>
                        <td><input type="password" class="form-control" placeholder="Enter Your Password" name="password"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" class="btn btn-primary" name="sub"></td>
                    </tr>
                </table>
            </form>
    </body>
</html>
