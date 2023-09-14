<?php
session_start();
include "database_connection.php";

if(isset($_SESSION['user_id']) && isset($_SESSION['username'])) //Selida epexergasias profile toy xrhsth 
{
    $id = $_SESSION['user_id']; //Arxikopoihsh metavlhtwn sxetika me to profile toy xrhsth opws kai retrieve apo thn sql gia dedomena me ta user sales kai ta score tou xrhsth
    $username = $_SESSION['username'];
    $email = $_SESSION['email'];
    $sqlemail = "SELECT * FROM user WHERE username='$username' AND email='$email'";
    $result = mysqli_query($conn,$sqlemail);
    $row = mysqli_fetch_assoc($result);
    $sqlqoffer = "SELECT * FROM offer WHERE user_id='$id'";
    $offer = mysqli_query($conn,$sqlqoffer);
    $offer_row = mysqli_fetch_assoc($offer);
    ?>

    <!DOCTYPE html>
    <html>
    <head>
        <title>Profile</title>
        <link rel="stylesheet" type="text/css" href="profile_style.css">
    </head>
    <body>
        <h1>Hello, <?php echo $_SESSION['username']; ?> this is your profile page. </h1>
        <p>Here you can change your username, password and email.</p>
        
        <div class="profile-info-container">
           <h2>User Information</h2>
           <ul>
              <li>Username: <?php echo $_SESSION['username']; ?></li>
              <li>Email: <?php echo $_SESSION['email']; ?></li>
              <li>Tokens: <?php echo $row['token']; ?></li>
              <li>All time score: <?php echo $row['score']; ?></li>
              <li>Monthly score: <?php echo $row['score_history']; ?></li>
              <li>Submitted offers history: <?php echo $offer_row['date']; ?></li>
          </ul>
        </div>
        <nav> <!-- Menu pou dinei sto xrhsth thn epilogh na allaxei username, password h email -->
            <a href="change-username.php">Change username</a>
            <a href="change-email.php">Change email</a>
            <a href="change-password.php">Change password</a>
            <a href="testmap.php">Home</a>
        </nav>
    </body>
    </html>

    <?php
}
else
{
    header("Location: index.php");
    exit();
}