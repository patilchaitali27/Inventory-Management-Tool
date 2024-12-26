<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory Management Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #007bff;
        }
        .navbar-brand {
            color: #fff;
            font-weight: bold;
        }
        .sidebar {
            height: 100vh;
            background-color: #343a40;
            padding-top: 20px;
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            width: 250px;
            overflow-y: auto;
        }
        .sidebar a {
            color: #adb5bd;
            padding: 15px;
            text-decoration: none;
            display: block;
            font-size: 16px;
            border-bottom: 1px solid #495057;
        }
        .sidebar a:hover {
            background-color: #495057;
            color: #fff;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
        }
        .card {
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card-title {
            color: #007bff;
        }
        .icon {
            font-size: 50px;
            color: #007bff;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="#">Inventory Dashboard</a>
</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="addRawPage"><i class="fas fa-plus-circle"></i> Add Raw Material</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewRaw"><i class="fas fa-eye"></i> View Raw Material</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="updateRawPage"><i class="fas fa-edit"></i> Update Raw Material Quantity</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addProcessedPage"><i class="fas fa-plus-square"></i> Add Processed Item</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewProcessed"><i class="fas fa-eye"></i> View Processed Item</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="updateProcessedPage"><i class="fas fa-edit"></i> Update Processed Item</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="viewIssuedRaw"><i class="fas fa-history"></i> View Issued Raw Material</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="viewissuedProcessed"><i class="fas fa-history"></i> View Issued Processed Item</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="unavailableRawPage"><i class="fas fa-times-circle"></i> Show Unavailable Raw Materials</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="unavailableProcessedPage"><i class="fas fa-times-circle"></i> Show Unavailable Processed Items</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="changePassword"><i class="fas fa-key"></i> Change Password</a>
                    </li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 content">
            <h1 class="h2">Dashboard</h1>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-plus-circle icon"></i>
                            <h5 class="card-title">Add Raw Material</h5>
                            <p class="card-text">Add new raw materials to the inventory.</p>
                            <a href="addRawPage" class="btn btn-primary">Go</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-eye icon"></i>
                            <h5 class="card-title">View Raw Material</h5>
                            <p class="card-text">View all raw materials in the inventory.</p>
                            <a href="viewRaw" class="btn btn-primary">Go</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-edit icon"></i>
                            <h5 class="card-title">Update Raw Material Quantity</h5>
                            <p class="card-text">Update the quantity of existing raw materials.</p>
                            <a href="updateRawPage" class="btn btn-primary">Go</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-plus-square icon"></i>
                            <h5 class="card-title">Add Processed Item</h5>
                            <p class="card-text">Add new processed items to the inventory.</p>
                            <a href="addProcessedPage" class="btn btn-primary">Go</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-eye icon"></i>
                            <h5 class="card-title">View Processed Item</h5>
                            <p class="card-text">View all processed items in the inventory.</p>
                            <a href="viewProcessed" class="btn btn-primary">Go</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-edit icon"></i>
                            <h5 class="card-title">Update Processed Item</h5>
                            <p class="card-text">Update the quantity of existing processed items.</p>
                            <a href="updateProcessedPage" class="btn btn-primary">Go</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Add more cards for each menu item as needed -->
        </main>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>