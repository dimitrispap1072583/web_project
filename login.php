<?php 
session_start(); 
$_SESSION["user_id"] = $_GET['user_id'];
$_SESSION["admin"] = $_GET['admin'];

$connect = mysqli_connect("localhost:3307", "root", "", "web_project");

if (isset($_POST['email']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$email = validate($_POST['email']);
	$pass = validate($_POST['password']);

	if (empty($email)) {
		header("Location: index.php?error=Απαιτείται όνομα χρήστη");
	    exit();
	}else if(empty($pass)){
        header("Location: index.php?error=Απαιτείται κωδικός");
	    exit();
	}else                                                                                         {
		// hashing the password
        $pass = md5($pass);

        
		$sql = "SELECT * FROM user WHERE email='$email' AND password='$pass'";

		$result = mysqli_query($connect, $sql);

		if (mysqli_num_rows($result) === 1) 
		                                                                            {
			$row = mysqli_fetch_assoc($result);
												    
            if ($row['email'] === $email && $row['password'] === $pass)  {
            	
            	$_SESSION['username'] = $row['username'];
            	$_SESSION['user_id'] = $row['user_id'];
		$_SESSION['email'] = $row['email'];
		$_SESSION['registration_date'] = $row['registration_date'];
		$_SESSION['admin'] = $row['admin'];


		    
		if ($row['admin'] === 1){
			//admin_menu exit
					 ;}
		                  else{
            	                         header("Location: home.php");
		                         exit();
		                      }
                                                                             }
	else{
		header("Location: index.php?error=Λάθος όνομα χρήστη ή κωδικός");
		exit();
	    }
		                                                                       }
		
	                                                                                   }
	
}
else{
	header("Location: index.php");
	exit();
}
