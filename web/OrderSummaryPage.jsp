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
            /* Add styles for the title */
            text-align: center;
            padding: 20px 0;
            font-size: 24px;
            font-weight: bold;
        }

        /*CONTAINER 4*/
.container4 {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            background-color: #f3f3f3;
        }

        .labels-row {
            display: flex;
            justify-content: space-around;
            width: 300px;
            margin-bottom: 10px;
        }

        .labels-row p {
            text-align: center;
            flex-basis: 30%;
        }

        .rectangle-box {
            display: flex;
            align-items: center;
            border: 1px solid #ccc;
            padding: 10px;
            width: 300px;
        }

        .product-info {
            flex-grow: 1;
            text-align: left;
            padding-left: 10px;
        }

        .product-info p {
            margin: 5px 0;
        }

        .payment-method {
            display: flex;
            flex-direction: column;
        }

        .payment-method > div {
            margin: 5px 0;
        }

        .chosen-payment-method {
            display: flex;
            align-items: center;
        }

        .chosen-payment-method button {
            margin-left: 10px;
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
        IVE ‘SHOW WHAT I HAVE’ TOUR
    </div>

<div class="container4">
        <!-- First container with labels and rectangle box -->
        <div class="labels-row">
            <p>PRODUCTS ORDERED</p>
            <p>QUANTITY</p>
            <p>TOTAL</p>
        </div>
        <div class="rectangle-box">
            <img src="path_to_image.jpg" alt="Image">
            <div class="product-info">
                <p>IVE ‘Show What I Have’ Tour Ticket - July 13, 2024, 7PM</p>
                <p>2</p>
                <p>15,000</p>
            </div>
        </div>

        <!-- Second container with payment method -->
        <div class="payment-method">
            <p>PAYMENT METHOD</p>
            <div>
                <button>Payment Option 1</button>
                <button>Payment Option 2</button>
                <button>Payment Option 3</button>
            </div>
        </div>
    </div>

    <!-- Third container with chosen payment method -->
    <div class="chosen-payment-method">
        <p>CHOSEN PAYMENT METHOD</p>
        <p>Chosen Type of Payment</p>
        <p>Number</p>
        <button>Change Number</button>
    </div>

    <button>CONFIRM</button>


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
