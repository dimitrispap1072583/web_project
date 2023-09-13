<?php //Arxeio poy emfanizei ta aparaithta gia thn allagh username
session_start();
include "db_conn.php";

if(isset($_SESSION['user_id']) && isset($_SESSION['user_name']))
{
    ?>
<!DOCTYPE html>
    <html>
    <head>
        <title>Change username</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <form action="change-u.php" method="post">
            
            <?php if(isset($_GET['error'])) { ?>
                <p class="error"> <?php echo $_GET['error']; ?></p>
            <?php } ?>
            
            <?php if(isset($_GET['success'])) { ?>
                <p class="success"> <?php echo $_GET['success']; ?></p>
            <?php } ?>

            <label> New Username</label>
            <input type="text" name="newusername" placeholder="New Username"><br>

            <button class="button" type="submit">Confirm change</button>
                <a href="testmap.php">HOME</a>
        </form>
    </body>
    </html>

    <?php
}
else
{
    header("Location: index.php");
    exit();
}