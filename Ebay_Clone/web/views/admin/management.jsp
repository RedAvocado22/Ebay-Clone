<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    
    <style>
        /* General Layout */
        .dashboard-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f4f6f8;
        }

        .main-content {
            max-width: 800px;
            background-color: #ffffff;
            padding: 40px;
            margin: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        /* Welcome Title */
        .main-content h1 {
            font-size: 2.5em;
            color: #333;
            margin-bottom: 10px;
            font-weight: 600;
        }

        /* Introduction Text */
        .main-content p {
            color: #555;
            font-size: 1.1em;
            line-height: 1.6;
            margin: 10px 0;
        }

        /* User Name Highlight */
        .main-content p strong {
            color: #007bff;
        }

        /* Welcome Section */
        .welcome-section {
            margin-top: 30px;
            text-align: left;
        }

        .welcome-section h2 {
            font-size: 1.8em;
            color: #333;
            font-weight: 600;
            margin-bottom: 15px;
        }

        /* List Styling */
        .welcome-section ul {
            list-style-type: disc;
            padding-left: 20px;
            color: #555;
        }

        .welcome-section li {
            margin: 10px 0;
            font-size: 1.1em;
            line-height: 1.5;
        }

        .welcome-section li strong {
            color: #007bff;
            font-weight: 600;
        }
    </style>
</head>
<body>
    
    <div class="dashboard-wrapper">
        <div class="main-content">
            <h1>Welcome to the Admin Dashboard</h1>
            <p>Welcome to the management panel. Here, you can manage various aspects of the platform, such as orders, products, accounts, feedback, and categories. Use the sidebar to navigate through different management sections.</p>
            
            <div class="welcome-section">
                <h2>Getting Started</h2>
                <ul>
                    <li>To view and manage customer orders, go to <strong>Order Management</strong>.</li>
                    <li>To update and manage products, navigate to <strong>Product Management</strong>.</li>
                    <li>For managing user account and feedback about, select <strong>Account Management</strong>.</li>
                </ul>
            </div>
        </div>
    </div>

</body>
</html>
