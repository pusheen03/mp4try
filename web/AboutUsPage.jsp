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
            
            .container3 {
    text-align: center;
    margin-top: 20px;
}

.developers {
    display: flex;
    justify-content: space-around;
    margin-top: 20px;
}

.developer {
    flex-basis: 30%;
}

.developer img {
    width: 100px;
    height: 100px;
    border-radius: 50%;
    object-fit: cover;
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
    <h2>About DokiDOki</h2>
    <p>Description of DokiDoki...</p>
    <h3>The Developers of DOKIDOKI</h3>
    <div class="developers">
        <div class="developer">
            <img src="developer_image_1.jpg" alt="Developer 1">
            <p>Description of Developer 1...</p>
        </div>
        <div class="developer">
            <img src="developer_image_2.jpg" alt="Developer 2">
            <p>Description of Developer 2...</p>
        </div>
        <div class="developer">
            <img src="developer_image_3.jpg" alt="Developer 3">
            <p>Description of Developer 3...</p>
        </div>
    </div>
    <p>Additional description...</p>
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
