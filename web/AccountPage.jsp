<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Page</title>
        <style>

            .container1 {
                display: flex;
                justify-content: space-between;
                align-items: center;
                background: #FFD56B;


            }

            .container2 {
                display: flex;
                justify-content: space-between;
                padding: 15px;
                align-items: center;
                background-color: #f3f3f3;
            }

            .dropdown-content,
            .menu-items {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a,
            .menu-items a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover,
            .menu-items a:hover {
                background-color: #f1f1f1;
            }

            .categories-dropdown,
            .menu-dropdown {
                position: relative;
                margin-right: 10px;
            }

            .categories-dropdown:hover .dropdown-content,
            .menu-dropdown:hover .menu-items {
                display: block;
            }

            .search-bar {
                display: flex;
                align-items: center;
            }

            .search-bar input[type="text"] {
                padding: 8px;
                margin-right: 5px;
            }

            .search-bar button {
                padding: 8px 12px;
            }


            /* container 3 */
            .container3 {
                padding: 20px;
            }

            .account-details {
                display: flex;
                flex-direction: column;
            }

            .detail {
                margin-bottom: 15px;
            }

            label {
                font-weight: bold;
            }

            input[type="text"] {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 5px;
            }



        </style>
    </head>
    <body>
        <div class="container1">

            <img style="width: 25%; height: 25%" src="images/cute.png" />
            <div style="width: 100%; height: 100%; color: white; font-size: 96px; font-family: Lilita One; font-weight: 400; word-wrap: break-word">DOKIDOKI</div>

        </div>

        <div class="container2">

            <!-- Dropdown for categories -->
            <div class="categories-dropdown">
                <button onclick="toggleDropdown()">Categories</button>
                <div id="categoriesDropdown" class="dropdown-content">
                    <a href="Concerts.jsp">Concerts</a>
                    <a href="Albums.jsp">Albums</a>
                    <a href="#">Merchandise</a>
                </div>
            </div>

            <!-- Search bar -->
            <div class="search-bar">
                <input type="text" placeholder="Search...">
                <button type="submit">Search</button>
            </div>

            <!-- Hamburger icon for menu -->
            <div class="menu-dropdown">
                <div class="menu-icon" onclick="toggleMenu()">☰</div>
                <div id="menuItems" class="menu-items" style="right: 0; left: auto;">
                    <a href="#">Cart</a>
                    <a href="#">Purchases</a>
                    <a href="#">Account</a>
                    <a href="#">About Us</a>
                </div>
            </div>
        </div>



        <div class="container3">
            <h2>My Account</h2>
            <div class="account-details">
                <div class="detail">
                    <label for="name">Name</label>
                    <input type="text" id="name" value="Jeremy Pusheen" readonly>
                </div>
                <div class="detail">
                    <label for="username">Username</label>
                    <input type="text" id="username" value="jeremypusheencute" readonly>
                </div>
                <div class="detail">
                    <label for="email">Email</label>
                    <input type="text" id="email" value="jeremypusheen123@gmail.com" readonly>
                </div>
                <div class="detail">
                    <label for="contact">Contact Number</label>
                    <input type="text" id="contact" value="090673882054" readonly>
                </div>
            </div>
        </div>




        <script>
            // JavaScript to toggle menu
            function toggleMenu() {
                var menu = document.getElementById("menuItems");
                if (menu.style.display === "block") {
                    menu.style.display = "none";
                } else {
                    menu.style.display = "block";
                }
            }
        </script>


    </body>
</html>
