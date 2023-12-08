<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Concerts Page</title>
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
            display: flex;
            flex-wrap: wrap;
            justify-content: center; /* Center items horizontally */
            align-items: center; /* Center items vertically */
            padding: 20px;
            gap: 20px; /* Space between squares */
        }

        .square {
            flex: 0 0 calc(30% - 20px); /* All squares are of equal size */
            background-color: #f3f3f3;
            padding: 20px;
            box-sizing: border-box;
            text-align: center;
            border-radius: 8px;
            display: flex;
            flex-direction: column;
        }

        .square img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        .square h3 {
            font-size: 20px;
            margin-bottom: 5px;
        }

        .square p {
            margin-bottom: 15px;
        }

        .square button {
            padding: 8px 16px;
            border: none;
            background-color: #FFD56B;
            color: white;
            cursor: pointer;
            border-radius: 4px;
        }

        /* Align first and fourth squares */
        .container3 {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(30%, 1fr)); /* Responsive grid */
            gap: 20px;
            justify-content: start; /* Align to the start of the container */
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
                    <a href="#">Albums</a>
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
        <div class="square">
            <img src="path_to_image_1.jpg" alt="Image 1">
            <h3>Title 1</h3>
            <p>Description text for Image 1.</p>
            <button>Button 1</button>
        </div>

        <div class="square">
            <img src="path_to_image_2.jpg" alt="Image 2">
            <h3>Title 2</h3>
            <p>Description text for Image 2.</p>
            <button>Button 2</button>
        </div>

        <div class="square">
            <img src="path_to_image_3.jpg" alt="Image 3">
            <h3>IVE ‘SHOW WHAT I HAVE’ TOUR</h3>
            <p>SM Mall of Asia Arena</p>
            <button onclick="goToAboutEventPage()">JULY 13 - 14, 2024</button>
        </div>

        <div class="square">
            <img src="path_to_image_4.jpg" alt="Image 4">
            <h3>Title 4</h3>
            <p>Description text for Image 4.</p>
            <button>Button 4</button>
        </div>

        <div class="square">
            <img src="path_to_image_5.jpg" alt="Image 5">
            <h3>Title 5</h3>
            <p>Description text for Image 5.</p>
            <button>Button 5</button>
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
        
        <script>
        function goToAboutEventPage() {
            window.location.href = "AboutEventPage.jsp"; // Redirect to AboutEventPage.jsp
        }
    </script>
    
    </body>
</html>
