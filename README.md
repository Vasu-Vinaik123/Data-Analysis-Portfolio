
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Analytics Portfolio</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #E7F5FF; /* Light blue background */
            color: #333; /* Dark gray font color */
            line-height: 1.6;
            padding: 20px;
        }

        h1, h2, h3 {
            color: #3A86FF; /* Soft blue for headings */
        }

        h1 {
            font-size: 2.5rem;
        }

        h2 {
            font-size: 2rem;
            margin-top: 20px;
        }

        h3 {
            font-size: 1.5rem;
            margin-top: 15px;
        }

        p {
            font-size: 1.2rem;
            margin-bottom: 10px;
            color: #333; /* Dark gray for text */
        }

        a {
            color: #007BFF; /* Bright blue for links */
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #0056b3; /* Darker blue on hover */
        }

        .project {
            background-color: #ffffff; /* White background for project sections */
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        }

        .project h3 {
            color: #3A86FF; /* Soft blue for project headers */
        }

        .project ul {
            padding-left: 20px;
        }

        .project ul li {
            font-size: 1.1rem;
        }

        .dashboard-img {
            width: 100%;
            max-width: 800px;
            margin: 15px 0;
            border-radius: 8px;
        }

        .footer {
            margin-top: 30px;
            text-align: center;
            font-size: 1rem;
            color: #777;
        }

        .footer a {
            font-weight: normal;
            color: #333;
        }

        .footer a:hover {
            color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>

    <h1>Data Analytics Portfolio</h1>

    <p>Welcome to my Portfolio! This portfolio showcases a collection of projects that demonstrate my skills in data analysis, SQL, Power BI, and various other analytical and technical fields. The projects span different industries and topics and reflect my passion for transforming raw data into actionable insights.</p>

    <p><a href="https://github.com/Vasu-Vinaik123/Data-Analysis-Portfolio.git">Click here to view my Projects on GitHub</a></p>

    <div class="project">
        <h2>Project 1: Call Center Analytics Dashboard</h2>
        <p>This Power BI dashboard provides key insights into call center performance by tracking essential metrics such as total calls, call durations, and response times. The dashboard enables data-driven decision-making for improving efficiency and customer satisfaction.</p>

        <h3>Key Steps:</h3>
        <ul>
            <li>Data downloaded from the <strong>Call Center Dataset</strong>.</li>
            <li>Walked through the data and connected <strong>Power BI</strong> to the database.</li>
            <li>Identified <strong>KPIs</strong>.</li>
            <li>Cleaned the data by handling null values and ensuring correct data types.</li>
            <li>Used <strong>DAX</strong> for custom calculations and metrics.</li>
            <li>Built visualizations and applied themes, colors, and filters for better representation.</li>
            <li>Published the dashboard.</li>
        </ul>

        <h3>Dashboard</h3>
        <img src="Call_Center_Dashboard/Call_Center_Dashboard_Image.png" alt="Call Center Dashboard" class="dashboard-img">
    </div>

    <div class="project">
        <h2>Project 2: Classic Cars Sales Analytics</h2>
        <p>This project leverages the <strong>Classic Car Models Sales</strong> dataset, which contains sales records, customer details, products, orders, employees, and offices. The analysis aims to provide key insights into the classic car sales business, such as <strong>sales performance, customer details, order details, and order quantities</strong>. By using SQL queries, this project explores and extracts valuable insights to aid in better business decision-making.</p>

        <h3>Key Areas of Analysis:</h3>
        <ul>
            <li><strong>Sales Performance</strong></li>
            <li><strong>Customer Information</strong></li>
            <li><strong>Order Details & Quantities</strong></li>
            <li><strong>Order Status</strong></li>
            <li><strong>Product Information</strong></li>
            <li><strong>Geographic and Employee Data</strong></li>
        </ul>

        <p><a href="https://github.com/Vasu-Vinaik123/Data-Analysis-Portfolio/blob/main/Classic_Models_Analytics/Classic_model_analytics.sql">SQL Code</a></p>
    </div>

    <div class="project">
        <h2>Project 3: Coffee Shop Sales Analytics</h2>
        <p>This project analyzes a coffee sales dataset, providing key business insights through SQL queries. The analysis focuses on total sales, monthly trends, and performance comparisons to help businesses make data-driven decisions.</p>

        <h3>Key Performance Indicators (KPIs):</h3>
        <ul>
            <li><strong>Total Sales in May</strong></li>
            <li><strong>Sales Per Month</strong></li>
            <li><strong>Month-Over-Month Sales Difference</strong></li>
            <li><strong>Month-Over-Month Sales Growth</strong></li>
            <li><strong>Comparison of Daily Sales with the Average Sales in May</strong></li>
            <li><strong>Top 10 Products by Revenue in May</strong></li>
        </ul>

        <p><a href="https://github.com/Vasu-Vinaik123/Data-Analysis-Portfolio/blob/main/Coffee_Sales_Analytics/Coffee_Shop_Sales_Analytics.sql">SQL Code</a></p>
    </div>

    <div class="footer">
        <p>Connect with Me:</p>
        <p>Email: <a href="mailto:vasuvinaik123@gmail.com">vasuvinaik123@gmail.com</a></p>
        <p>LinkedIn: <a href="https://www.linkedin.com/in/vasu-vinaik/">vasuvinaik</a></p>
    </div>

</body>
</html>
