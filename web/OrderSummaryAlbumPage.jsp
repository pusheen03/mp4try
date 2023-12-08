<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Summary Album Page</title>
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
            justify-content: space-between;
            padding: 20px;
        }

        .column-container {
            flex: 1;
            padding: 0 20px;
            border-left: 1px solid #ccc;
        }

        .shipping-info {
            display: flex;
            flex-direction: column;
        }

        .shipping-info p {
            margin: 5px 0;
        }

        .shipping-box {
            border: 1px solid #ccc;
            padding: 10px;
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
        <!-- Column 1: Order Summary -->
        <div class="column-container">
            <h2>ORDER SUMMARY</h2>
            <div class="summary-container">
                <div>
                    <strong>PRODUCTS ORDERED</strong>
                    <!-- Image, Title, Description, and Price -->
                    <div class="product-details">
                        <img src="path_to_image.jpg" alt="Product Image">
                        <div>
                            <h3>Product Title</h3>
                            <p>Description</p>
                            <p>Price</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Column 2: Shipping Information -->
        <div class="column-container">
            <h2>SHIPPING INFORMATION</h2>
            <div class="shipping-info">
                <p><strong>Name:</strong></p>
                <div class="shipping-box">Jeremy Pusheen</div>

                <p><strong>Address:</strong></p>
                <div class="shipping-box">Palmera Hills 2 Taytay, Rizal</div>

                <p><strong>Contact No.:</strong></p>
                <div class="shipping-box">096520897331</div>
            </div>
        </div>
    </div>

   <div style="display: flex; justify-content: center; margin-top: 20px;">
        <a href="PaymentPage.jsp">
            <button style="padding: 10px 20px;">PROCEED TO PAYMENT</button>
        </a>
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