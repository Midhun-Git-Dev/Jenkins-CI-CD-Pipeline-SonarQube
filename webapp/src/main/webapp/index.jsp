<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DevOpsFlix</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            background: #000;
            color: #fff;
        }

        .header {
            background: linear-gradient(to bottom, rgba(0,0,0,0.8), rgba(0,0,0,0.2)),
                        url("https://assets.nflxext.com/ffe/siteui/vlv3/4f3f7f6a.jpg");
            height: 100vh;
            background-size: cover;
            background-position: center;
            padding: 20px 50px;
        }

        .nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            color: red;
        }

        .signin {
            background: red;
            padding: 8px 16px;
            border-radius: 4px;
            text-decoration: none;
            color: white;
            font-weight: bold;
        }

        .content {
            max-width: 650px;
            margin-top: 150px;
        }

        .content h1 {
            font-size: 50px;
            margin-bottom: 20px;
        }

        .content h2 {
            font-size: 26px;
            font-weight: normal;
            margin-bottom: 20px;
        }

        .content p {
            font-size: 18px;
        }

        .email-box {
            margin-top: 25px;
            display: flex;
        }

        .email-box input {
            flex: 1;
            padding: 15px;
            font-size: 16px;
            border: none;
        }

        .email-box button {
            background: red;
            color: white;
            border: none;
            padding: 15px 25px;
            font-size: 16px;
            cursor: pointer;
        }

        footer {
            text-align: center;
            padding: 20px;
            color: #aaa;
            font-size: 14px;
        }
    </style>
</head>

<body>

<div class="header">
    <div class="nav">
        <div class="logo">DevOpsFlix</div>
        <a href="#" class="signin">Sign In</a>
    </div>

    <div class="content">
        <h1>Unlimited Movies, DevOps & CI/CD</h1>
        <h2>Build. Deploy. Automate. Repeat.</h2>
        <h2>Builded By Mid-hxn07.</h2>
        <p>Ready to see a real CI/CD pipeline in action?</p>

        <div class="email-box">
            <input type="email" placeholder="Enter your email">
            <button>Get Started</button>
        </div>
    </div>
</div>

<footer>
    🚀 Deployed via GitHub → Jenkins → Maven → Tomcat  
    <br>
    © 2026 DevOps Project by Midhun
</footer>

</body>
</html>
