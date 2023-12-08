<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /* Style your dropdown, search bar, and other elements here */
            /* ... */

            /* Flexbox layout for row */
            .container1 {
                display: flex;
                justify-content: space-between;
                align-items: center;
                background: #FFD56B

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



            /* container 4 */
            .container4 {
                text-align: center;
                margin-top: 20px;
            }

            .gallery {
                display: flex;
                justify-content: space-around;
                align-items: center;
            }

            .gallery-item {
                flex: 1;
                margin: 10px;
                text-align: center;
                display: flex;
                flex-direction: column;
            }

            .image-box {
                width: 200px;
                height: 200px;
                overflow: hidden;
                background-color: #6cd670;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 10px; /* Adjust the margin between image and text */
            }

            .image-box img {
                width: auto;
                height: 150px; /* Set the height of the image */
                object-fit: cover;
            }

            .gallery-item p {
                margin: 0;
            }


            /* container 5 */
            .container5 {
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.description {
    flex: 1;
    color: white;
    padding-right: 20px;
}

.image {
    flex: 1;
    text-align: right;
}

.image img {
    border-radius: 10px;
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

        <div class="container3" style="text-align: center;">
            <h2>Featured Concerts</h2>
            <div class="concert-info">
                <div style="display: flex; justify-content: space-between; align-items: center;">
                    <button onclick="showPrevious()">&#60;</button>
                    <img src="images/enhypenfate.png" alt="K-Pop Group Image" style="width: 200px; height: 200px; margin: 20px;">
                    <button onclick="showNext()">&#62;</button>
                </div>
                <div style="display: flex; flex-direction: column; align-items: center;">
                    <p>The Philippine leg of ENHYPEN's FATE world tour is set to take place at the New Clark City stadium in Tarlac. The concert will be for one night only on Feb. 3 next year!</p>
                    <button style="margin-top: 20px;">BUY TICKETS</button>
                </div>
            </div>
        </div>



        <div class="container4">
            <h2>BEST SELLING ALBUMS</h2>
            <div class="gallery">
                <div class="gallery-item">
                    <div class="image-box">
                        <img src="images/image1.jpg" alt="Image 1">
                    </div>
                    <p>Text for Image 1</p>
                </div>
                <div class="gallery-item">
                    <div class="image-box">
                        <img src="images/image2.jpg" alt="Image 2">
                    </div>
                    <p>Text for Image 2</p>
                </div>
                <div class="gallery-item">
                    <div class="image-box">
                        <img src="images/image3.jpg" alt="Image 3">
                    </div>
                    <p>Text for Image 3</p>
                </div>
            </div>
        </div>


<div class="container44" style="background-color: #ff5555; padding: 20px;">
    <h2>FEATURED MERCHANDISE</h2>
</div>
<div class="container5" style="background-color: #ff5555; padding: 20px;">
    <div class="description">
        <h2>Description Title</h2>
        <p>This is the description text. It can be a brief overview or details about something.</p>
    </div>
    <div class="image">
        <img src="path_to_your_image.jpg" alt="Image Description" style="width: 200px; height: 200px;">
    </div>
</div>

        <!-- Your main content goes here -->
        <!-- ... -->
        <script>
            // JavaScript to handle navigation
            const concerts = [
                {
                    image: "image_path_1.jpg",
                    description: "Description of the first concert."
                },
                {
                    image: "image_path_2.jpg",
                    description: "Description of the second concert."
                },
                        // Add more concert details as needed
            ];
            let currentConcertIndex = 0;

            function showPrevious() {
                if (currentConcertIndex > 0) {
                    currentConcertIndex--;
                } else {
                    currentConcertIndex = concerts.length - 1;
                }
                updateConcertInfo();
            }

            function showNext() {
                if (currentConcertIndex < concerts.length - 1) {
                    currentConcertIndex++;
                } else {
                    currentConcertIndex = 0;
                }
                updateConcertInfo();
            }

            function updateConcertInfo() {
                const concert = concerts[currentConcertIndex];
                const image = document.querySelector('.concert-info img');
                const description = document.querySelector('.concert-info p');

                image.src = concert.image;
                description.textContent = concert.description;
            }
        </script>


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
