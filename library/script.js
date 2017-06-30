<script type="text/javascript"> 
	//sidebar nav
	function openNav() {
		document.getElementById('mySidenav').style.width = "250px";
		document.getElementById("navbtn").style.visibility = "hidden";
		document.getElementById("body").style.marginLeft = "250px";
		document.getElementById("add_new").style.visibility = "hidden";
		document.getElementById("login").style.visibility = "hidden";
		document.getElementById("logout").style.visibility = "hidden";
		// document.getElementById("nav-icon-search").style.visibility = "hidden";
		// document.getElementById("nav-icon-user").style.visibility = "hidden";
		
	

	}
	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
		document.getElementById("navbtn").style.visibility = "visible";
		document.getElementById("body").style.marginLeft = "0";
		document.getElementById("add_new").style.visibility = "visible";
		document.getElementById("login").style.visibility = "visible";
		document.getElementById("logout").style.visibility = "visible";
		// document.getElementById("nav-icon-search").style.visibility = "visible";
		// document.getElementById("nav-icon-user").style.visibility = "visible";
		

	}

	//log in / log out button

	function hide_login() {
    	document.getElementById("login").style.visibility = "hidden";
	}
</script>



