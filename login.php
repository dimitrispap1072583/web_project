sqluser="SELECT * FROM users WHERE user_name='$uname' AND password='$pass AND admin=0;'";


sqladmin="SELECT * FROM users WHERE user_name='$uname' AND password='$pass AND admin=1;'";


resultuser=mysqli_query($conn, $sqluser);

resultadmin=mysqli_query($conn, $sqladmin);

